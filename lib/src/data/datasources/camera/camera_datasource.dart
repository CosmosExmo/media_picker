import '../../models/image_dto.dart';
import '../../models/video_dto.dart';

/// Abstract interface for camera data source
///
/// Defines the contract for camera-related operations.
/// Implementations should wrap the underlying camera plugin.
abstract class CameraDataSource {
  /// Capture a single image from the camera
  ///
  /// Returns [ImageDto] containing the captured image data
  /// Throws exception if capture fails
  Future<ImageDto> captureImage();

  /// Capture a video from the camera
  ///
  /// Note: Actual capture through CameraView UI. This exists for interface compliance.
  /// Returns [VideoDto] containing the captured video data
  /// Throws exception if capture fails
  Future<VideoDto> captureVideo({Duration? maxDuration});

  /// Check if camera is available on the device
  ///
  /// Returns true if camera is available
  Future<bool> isCameraAvailable();
}
