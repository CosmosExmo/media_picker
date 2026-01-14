import 'dart:io';

import 'package:uuid/uuid.dart';

import '../../models/image_dto.dart';
import '../../models/video_dto.dart';
import 'camera_datasource.dart';

/// Camera data source implementation using CamerAwesome
///
/// This is a lightweight wrapper around the actual camera capture logic.
/// The actual UI-based camera capture is handled in the presentation layer.
class CameraDataSourceImpl implements CameraDataSource {
  const CameraDataSourceImpl();

  @override
  Future<ImageDto> captureImage() async {
    // Note: This method is not directly called in the current architecture.
    // Camera capture is handled through the CameraView UI in presentation layer.
    // This exists for interface compliance and potential future direct capture needs.
    throw UnimplementedError(
      'Camera capture is handled through CameraView UI. '
      'Use repository.captureFromCamera() which navigates to CameraView.',
    );
  }

  @override
  Future<VideoDto> captureVideo({Duration? maxDuration}) async {
    // Note: This method is not directly called in the current architecture.
    // Video capture is handled through the CameraView UI in presentation layer.
    // This exists for interface compliance and potential future direct capture needs.
    throw UnimplementedError(
      'Video capture is handled through CameraView UI. '
      'Use repository.captureVideos() which navigates to CameraView.',
    );
  }

  @override
  Future<bool> isCameraAvailable() async {
    // Simple platform check
    try {
      return Platform.isAndroid || Platform.isIOS;
    } catch (_) {
      return false; // Web or unsupported platform
    }
  }

  /// Helper method to create ImageDto from captured file path
  ///
  /// This is used by the repository after image is captured via CameraView
  ImageDto createDtoFromPath(String filePath) {
    final fileName = filePath.split('/').last;
    final file = File(filePath);
    final stat = file.statSync();

    return ImageDto(
      id: const Uuid().v4(),
      path: filePath,
      extension: fileName.split('.').last,
      fileName: fileName,
      fileSizeBytes: stat.size,
    );
  }

  /// Helper method to create VideoDto from captured file path
  ///
  /// This is used by the repository after video is captured via CameraView.
  /// Videos are path-based to avoid memory issues with large files.
  VideoDto createVideoDtoFromPath(
    String filePath, {
    int? durationMs,
  }) {
    final fileName = filePath.split('/').last;

    return VideoDto(
      id: const Uuid().v4(),
      path: filePath,
      extension: fileName.split('.').last,
      fileName: fileName,
      durationMs: durationMs,
    );
  }
}
