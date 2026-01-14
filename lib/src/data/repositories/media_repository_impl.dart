import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

import '../../core/options/media_selection_options.dart';
import '../../domain/entities/media_entity.dart';
import '../../domain/failures/media_failure.dart';
import '../../domain/repositories/media_repository.dart';
import '../datasources/compression/compression_datasource.dart';
import '../datasources/file_picker/file_picker_datasource.dart';
import '../datasources/gallery/gallery_datasource.dart';
import '../models/document_dto.dart';
import '../models/image_dto.dart';
import '../models/video_dto.dart';
import '../models/mappers/document_mapper.dart';
import '../models/mappers/image_mapper.dart';
import '../models/mappers/video_mapper.dart';
import '../utils/media_type_classifier.dart';

/// Unified implementation of MediaRepository
///
/// Coordinates between data sources to provide unified media operations
class MediaRepositoryImpl implements MediaRepository {
  final GalleryDataSource _galleryDataSource;
  final FilePickerDataSource _filePickerDataSource;
  final CompressionDataSource _compressionDataSource;
  final ImageMapper _imageMapper;
  final VideoMapper _videoMapper;
  final DocumentMapper _documentMapper;

  const MediaRepositoryImpl({
    required GalleryDataSource galleryDataSource,
    required FilePickerDataSource filePickerDataSource,
    required CompressionDataSource compressionDataSource,
    required ImageMapper imageMapper,
    required VideoMapper videoMapper,
    required DocumentMapper documentMapper,
  })  : _galleryDataSource = galleryDataSource,
        _filePickerDataSource = filePickerDataSource,
        _compressionDataSource = compressionDataSource,
        _imageMapper = imageMapper,
        _videoMapper = videoMapper,
        _documentMapper = documentMapper;

  @override
  Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromCamera({
    required MediaSelectionOptions options,
  }) async {
    try {
      // Validate: Camera doesn't support documents
      if (options.maxDocuments != null && options.maxDocuments! > 0) {
        return left(
          const MediaFailure.cameraError(
            'Camera does not support document capture. Use getMediasFromFiles instead.',
          ),
        );
      }

      // Note: Camera capture is handled through CameraView UI in presentation layer.
      // This method exists for interface compliance.
      return left(
        const MediaFailure.cameraError(
          'Camera capture should be initiated through CameraView UI. '
          'Use MediaPicker.getMediasFromCamera() instead.',
        ),
      );
    } catch (e) {
      return left(MediaFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromGallery({
    required MediaSelectionOptions options,
  }) async {
    try {
      // Validate: Gallery doesn't support documents
      if (options.maxDocuments != null && options.maxDocuments! > 0) {
        return left(
          const MediaFailure.galleryError(
            'Gallery does not support document picking. Use getMediasFromFiles instead.',
          ),
        );
      }

      // Calculate total limit
      final totalLimit = options.maxTotal ??
          ((options.maxImages ?? 0) + (options.maxVideos ?? 0));

      if (totalLimit <= 0) {
        return left(
          const MediaFailure.galleryError(
            'At least one of maxImages or maxVideos must be greater than 0.',
          ),
        );
      }

      // Pick mixed media from gallery (images + videos)
      final xfiles = await _galleryDataSource.pickMixedMedia(
        maxItems: totalLimit,
      );

      if (xfiles.isEmpty) {
        return left(const MediaFailure.cancelled());
      }

      // Process and map each media item
      final List<MediaEntity> entities = [];

      for (final xfile in xfiles) {
        try {
          // Get extension from filename
          final extension = xfile.name.split('.').last.toLowerCase();

          // Classify media type
          final mediaType = MediaTypeClassifier.classify(extension);

          switch (mediaType) {
            case MediaType.image:
              // Create ImageDto, compress, and map
              final imageDto = ImageDto(
                id: const Uuid().v4(),
                path: xfile.path,
                extension: extension,
                fileName: xfile.name,
              );

              final compressedPath = await _compressionDataSource.compressToFile(
                imageDto.path,
              );
              final compressedDto = imageDto.copyWith(path: compressedPath);
              final entity = _imageMapper.dtoToEntity(compressedDto);
              entities.add(entity);
              break;

            case MediaType.video:
              // Create VideoDto and map
              final videoDto = VideoDto(
                id: const Uuid().v4(),
                path: xfile.path,
                extension: extension,
                fileName: xfile.name,
              );
              final entity = _videoMapper.dtoToEntity(videoDto);
              entities.add(entity);
              break;

            case MediaType.document:
              // Should not happen (gallery doesn't return documents)
              // But handle gracefully by skipping
              continue;
          }
        } catch (e) {
          // Skip failed items and continue
          continue;
        }
      }

      if (entities.isEmpty) {
        return left(
          const MediaFailure.unknown('Failed to process gallery media'),
        );
      }

      // Enforce limits
      final images = entities.whereType<ImageMedia>().toList();
      final videos = entities.whereType<VideoMedia>().toList();

      final limitedImages = options.maxImages != null
          ? images.take(options.maxImages!).toList()
          : images;
      final limitedVideos = options.maxVideos != null
          ? videos.take(options.maxVideos!).toList()
          : videos;

      final result = <MediaEntity>[...limitedImages, ...limitedVideos];

      return right(result);
    } catch (e) {
      return left(MediaFailure.galleryError(e.toString()));
    }
  }

  @override
  Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromFiles({
    required MediaSelectionOptions options,
  }) async {
    try {
      // Calculate total limit
      final totalLimit = options.maxTotal ??
          ((options.maxImages ?? 0) +
              (options.maxVideos ?? 0) +
              (options.maxDocuments ?? 0));

      if (totalLimit <= 0) {
        return left(
          const MediaFailure.filePickerError(
            'At least one of maxImages, maxVideos, or maxDocuments must be greater than 0.',
          ),
        );
      }

      // Build allowed extensions list
      final allowedExtensions = <String>[
        if ((options.maxImages ?? 0) > 0) ...options.allowedImageTypes,
        if ((options.maxVideos ?? 0) > 0) ...options.allowedVideoTypes,
        if ((options.maxDocuments ?? 0) > 0) ...options.allowedDocumentTypes,
      ];

      // Pick files
      final fileDtos = await _filePickerDataSource.pickFiles(
        allowedExtensions: allowedExtensions,
      );

      if (fileDtos.isEmpty) {
        return left(const MediaFailure.cancelled());
      }

      // Process and map each file
      final List<MediaEntity> entities = [];

      for (final imageDto in fileDtos) {
        try {
          // Classify media type from extension
          final mediaType = MediaTypeClassifier.classify(imageDto.extension);

          switch (mediaType) {
            case MediaType.image:
              // Compress and map image
              final compressedPath = await _compressionDataSource.compressToFile(
                imageDto.path,
              );
              final compressedDto = imageDto.copyWith(path: compressedPath);
              final entity = _imageMapper.dtoToEntity(compressedDto);
              entities.add(entity);
              break;

            case MediaType.video:
              // Create VideoDto from path
              final videoDto = VideoDto(
                id: const Uuid().v4(),
                path: imageDto.path,
                extension: imageDto.extension,
                fileName: imageDto.fileName,
              );
              final entity = _videoMapper.dtoToEntity(videoDto);
              entities.add(entity);
              break;

            case MediaType.document:
              // Create DocumentDto from path
              final documentDto = DocumentDto(
                id: const Uuid().v4(),
                path: imageDto.path,
                extension: imageDto.extension,
                fileName: imageDto.fileName,
              );
              final entity = _documentMapper.dtoToEntity(documentDto);
              entities.add(entity);
              break;
          }
        } catch (e) {
          // Skip failed items and continue
          continue;
        }
      }

      if (entities.isEmpty) {
        return left(
          const MediaFailure.unknown('Failed to process file picker media'),
        );
      }

      // Enforce limits
      final images = entities.whereType<ImageMedia>().toList();
      final videos = entities.whereType<VideoMedia>().toList();
      final documents = entities.whereType<DocumentMedia>().toList();

      final limitedImages = options.maxImages != null
          ? images.take(options.maxImages!).toList()
          : images;
      final limitedVideos = options.maxVideos != null
          ? videos.take(options.maxVideos!).toList()
          : videos;
      final limitedDocuments = options.maxDocuments != null
          ? documents.take(options.maxDocuments!).toList()
          : documents;

      final result = <MediaEntity>[
        ...limitedImages,
        ...limitedVideos,
        ...limitedDocuments
      ];

      return right(result);
    } catch (e) {
      return left(MediaFailure.filePickerError(e.toString()));
    }
  }
}
