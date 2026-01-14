import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../media_picker.dart';

/// MediaPicker - Unified static facade for all media operations
///
/// Provides three clean methods for getting media from different sources:
/// - getMediasFromCamera (images/videos)
/// - getMediasFromGallery (images/videos)
/// - getMediasFromFiles (images/videos/documents)
///
///
/// Example:
/// ```dart
/// final result = await MediaPicker.getMediasFromGallery(
///   options: MediaSelectionOptions(
///     maxImages: 5,
///     maxVideos: 2,
///     compressionOptions: CompressionOptions(quality: 90),
///   ),
/// );
///
/// result.fold(
///   (failure) => print('Error: $failure'),
///   (medias) {
///     for (final media in medias) {
///       switch (media) {
///         case ImageMedia(:final path):
///           print('Image: $path');
///         case VideoMedia(:final path):
///           print('Video: $path');
///         case DocumentMedia(:final path):
///           print('Document: $path');
///       }
///     }
///   },
/// );
/// ```
class MediaPicker {
  // Private constructor to prevent instantiation
  MediaPicker._();

  /// Global default compression options used when none are specified
  ///
  /// You can modify this to set app-wide compression defaults:
  /// ```dart
  /// MediaPicker.defaultCompressionOptions = CompressionOptions(quality: 90);
  /// ```
  static CompressionOptions defaultCompressionOptions =
      const CompressionOptions();

  /// Get media from camera (images/videos only - no documents)
  ///
  /// Opens a full-screen camera interface for capturing images and videos.
  /// The package handles navigation internally.
  ///
  /// [context] BuildContext required for navigation
  /// [options] Media selection configuration
  ///
  /// Returns [Either] with [MediaFailure] on error or list of [MediaEntity] on success
  ///
  /// Example:
  /// ```dart
  /// final result = await MediaPicker.getMediasFromCamera(
  ///   context,
  ///   options: MediaSelectionOptions(
  ///     maxImages: 5,
  ///     compressionOptions: CompressionOptions(quality: 90),
  ///     cameraConfig: CameraConfig.inspection(
  ///       labels: ['Front View', 'Back View'],
  ///     ),
  ///   ),
  /// );
  /// ```
  static Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromCamera(
    BuildContext context, {
    MediaSelectionOptions options = const MediaSelectionOptions(),
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

      // Navigate to CameraView
      final result = await Navigator.push<Map<String, dynamic>>(
        context,
        MaterialPageRoute(
          builder: (_) => CameraView(
            options: options,
          ),
        ),
      );

      // User cancelled or closed the camera
      if (result == null) {
        return left(const MediaFailure.cancelled());
      }

      final medias = result['medias'] as List<MediaEntity>? ?? [];

      // No media captured
      if (medias.isEmpty) {
        return left(const MediaFailure.cancelled());
      }

      return right(medias);
    } catch (e) {
      return left(MediaFailure.cameraError(e.toString()));
    }
  }

  /// Get media from gallery (images/videos only - no documents)
  ///
  /// Opens the device gallery for selecting images and videos.
  /// Gallery does not support document picking - use getMediasFromFiles for documents.
  ///
  /// [options] Media selection configuration
  ///
  /// Returns [Either] with [MediaFailure] on error or list of [MediaEntity] on success
  ///
  /// Example:
  /// ```dart
  /// final result = await MediaPicker.getMediasFromGallery(
  ///   options: MediaSelectionOptions(
  ///     maxImages: 10,
  ///     maxVideos: 3,
  ///     compressionOptions: CompressionOptions(quality: 85),
  ///   ),
  /// );
  /// ```
  static Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromGallery({
    MediaSelectionOptions options = const MediaSelectionOptions(),
  }) async {
    // Apply default compression if not specified
    final optionsWithCompression = _applyDefaultCompression(options);

    final usecase = _createGetMediasFromGalleryUsecase(optionsWithCompression);
    return usecase.execute(options: optionsWithCompression);
  }

  /// Get media from files (images/videos/documents - ALL supported)
  ///
  /// Opens the file picker for selecting any type of media.
  /// This is the ONLY way to pick documents (PDF, DOCX, etc.).
  ///
  /// [options] Media selection configuration
  ///
  /// Returns [Either] with [MediaFailure] on error or list of [MediaEntity] on success
  ///
  /// Example:
  /// ```dart
  /// final result = await MediaPicker.getMediasFromFiles(
  ///   options: MediaSelectionOptions(
  ///     maxImages: 5,
  ///     maxVideos: 2,
  ///     maxDocuments: 10,
  ///     allowedDocumentTypes: ['pdf', 'docx'],
  ///   ),
  /// );
  /// ```
  static Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromFiles({
    MediaSelectionOptions options = const MediaSelectionOptions(),
  }) async {
    // Apply default compression if not specified
    final optionsWithCompression = _applyDefaultCompression(options);

    final usecase = _createGetMediasFromFilesUsecase(optionsWithCompression);
    return usecase.execute(options: optionsWithCompression);
  }

  // ========== INTERNAL HELPER METHODS ==========

  /// Apply default compression options if not specified
  static MediaSelectionOptions _applyDefaultCompression(
    MediaSelectionOptions options,
  ) {
    if (options.compressionOptions != null) {
      return options;
    }

    return MediaSelectionOptions(
      maxImages: options.maxImages,
      maxVideos: options.maxVideos,
      maxDocuments: options.maxDocuments,
      maxTotal: options.maxTotal,
      allowedImageTypes: options.allowedImageTypes,
      allowedVideoTypes: options.allowedVideoTypes,
      allowedDocumentTypes: options.allowedDocumentTypes,
      compressionOptions: defaultCompressionOptions,
      cameraConfig: options.cameraConfig,
    );
  }

  // ========== INTERNAL FACTORY METHODS (Manual DI) ==========

  /// Create GetMediasFromGalleryUsecase with all dependencies
  static GetMediasFromGalleryUsecase _createGetMediasFromGalleryUsecase(
    MediaSelectionOptions options,
  ) {
    final compressionOptions =
        options.compressionOptions ?? defaultCompressionOptions;

    // Create datasources
    final galleryDataSource = GalleryDataSourceImpl(imagePicker: ImagePicker());
    const filePickerDataSource = FilePickerDataSourceImpl();
    final compressionDataSource = CompressionDataSourceImpl(compressionOptions);
    const permissionDataSource = PermissionDataSourceImpl();

    // Create mappers
    const imageMapper = ImageMapper();
    const videoMapper = VideoMapper();
    const documentMapper = DocumentMapper();

    // Create repositories
    final mediaRepository = MediaRepositoryImpl(
      galleryDataSource: galleryDataSource,
      filePickerDataSource: filePickerDataSource,
      compressionDataSource: compressionDataSource,
      imageMapper: imageMapper,
      videoMapper: videoMapper,
      documentMapper: documentMapper,
    );

    const permissionRepository = PermissionRepositoryImpl(
      permissionDataSource: permissionDataSource,
    );

    // Create use case
    return GetMediasFromGalleryUsecase(
      mediaRepository,
      permissionRepository,
    );
  }

  /// Create GetMediasFromFilesUsecase with all dependencies
  static GetMediasFromFilesUsecase _createGetMediasFromFilesUsecase(
    MediaSelectionOptions options,
  ) {
    final compressionOptions =
        options.compressionOptions ?? defaultCompressionOptions;

    // Create datasources
    final galleryDataSource = GalleryDataSourceImpl(imagePicker: ImagePicker());
    const filePickerDataSource = FilePickerDataSourceImpl();
    final compressionDataSource = CompressionDataSourceImpl(compressionOptions);

    // Create mappers
    const imageMapper = ImageMapper();
    const videoMapper = VideoMapper();
    const documentMapper = DocumentMapper();

    // Create repository
    final mediaRepository = MediaRepositoryImpl(
      galleryDataSource: galleryDataSource,
      filePickerDataSource: filePickerDataSource,
      compressionDataSource: compressionDataSource,
      imageMapper: imageMapper,
      videoMapper: videoMapper,
      documentMapper: documentMapper,
    );

    // Create use case
    return GetMediasFromFilesUsecase(mediaRepository);
  }
}
