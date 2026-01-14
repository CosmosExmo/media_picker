import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_failure.freezed.dart';

/// Sealed class representing all possible media-related failures
///
/// Supports images, videos, and documents
@freezed
sealed class MediaFailure with _$MediaFailure {
  const factory MediaFailure.permissionDenied() = _PermissionDenied;
  const factory MediaFailure.cameraError(String message) = _CameraError;
  const factory MediaFailure.galleryError(String message) = _GalleryError;

  /// File picker error (covers images, videos, and documents)
  const factory MediaFailure.filePickerError(String message) =
      _FilePickerError;

  const factory MediaFailure.compressionFailed(String message) =
      _CompressionFailed;
  const factory MediaFailure.noCameraAvailable() = _NoCameraAvailable;
  const factory MediaFailure.videoRecordingFailed(String message) =
      _VideoRecordingFailed;
  const factory MediaFailure.unknown(String message) = _Unknown;
  const factory MediaFailure.cancelled() = _Cancelled;
}
