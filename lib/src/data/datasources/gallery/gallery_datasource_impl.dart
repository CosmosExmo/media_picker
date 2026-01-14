import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import '../../models/image_dto.dart';
import '../../models/video_dto.dart';
import 'gallery_datasource.dart';

/// Gallery data source implementation using image_picker
///
/// Wraps the image_picker plugin to provide gallery selection functionality
class GalleryDataSourceImpl implements GalleryDataSource {
  final ImagePicker _imagePicker;

  GalleryDataSourceImpl({ImagePicker? imagePicker})
      : _imagePicker = imagePicker ?? ImagePicker();

  @override
  Future<List<ImageDto>> pickImages(int maxImages) async {
    try {
      // Pick multiple images from gallery
      final List<XFile> files = await _imagePicker.pickMultiImage(
        limit: maxImages,
      );

      // Convert XFiles to ImageDtos
      return files.map((file) {
        final fileName = file.name;
        final extension = file.name.split('.').last;

        return ImageDto(
          id: const Uuid().v4(),
          path: file.path,
          extension: extension,
          fileName: fileName,
        );
      }).toList();
    } catch (e) {
      throw GalleryException('Failed to pick images: $e');
    }
  }

  /// Pick mixed media (images and videos) from gallery
  ///
  /// This is the unified method for picking images and/or videos together
  @override
  Future<List<XFile>> pickMixedMedia({required int maxItems}) async {
    try {
      // Use pickMultipleMedia to allow both images and videos
      final List<XFile> files = await _imagePicker.pickMultipleMedia(
        limit: maxItems,
      );

      return files;
    } catch (e) {
      throw GalleryException('Failed to pick media: $e');
    }
  }

  @override
  Future<List<VideoDto>> pickVideos(int maxVideos) async {
    try {
      // Pick multiple videos from gallery
      final List<XFile> files = await _imagePicker.pickMultipleMedia(
        limit: maxVideos,
      );

      // Filter only videos and convert to VideoDtos
      final List<VideoDto> dtos = [];

      for (final file in files) {
        final extension = file.name.split('.').last.toLowerCase();

        // Only include video files
        if (['mp4', 'mov', 'avi', 'mkv', 'webm'].contains(extension)) {
          dtos.add(
            VideoDto(
              id: const Uuid().v4(),
              path: file.path,
              extension: extension,
              fileName: file.name,
            ),
          );
        }
      }

      return dtos;
    } catch (e) {
      throw GalleryException('Failed to pick videos: $e');
    }
  }
}

/// Exception thrown when gallery operations fail
class GalleryException implements Exception {
  final String message;

  GalleryException(this.message);

  @override
  String toString() => 'GalleryException: $message';
}
