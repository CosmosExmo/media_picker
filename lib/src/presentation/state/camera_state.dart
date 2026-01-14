import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/media_entity.dart';
import '../../domain/entities/media_metadata_entity.dart';
import '../../domain/enums/permission_status.dart';

part 'camera_state.freezed.dart';

/// Camera capture mode
enum CaptureMode {
  /// Photo capture mode
  photo,

  /// Video capture mode
  video,

  /// Both photo and video mode
  both,
}

/// Immutable state for camera functionality
///
/// Tracks camera permission, captured media, and UI state
@freezed
abstract class CameraState with _$CameraState {
  const CameraState._();

  factory CameraState({
    required PermissionStatus permissionStatus,
    required List<MediaEntity> capturedMedias,
    required bool isCapturing,
    required bool isRecording,
    required bool showCameraRoll,
    required CaptureMode captureMode,
    MediaMetadataEntity? currentMetadata,
    int? recordingDurationSeconds,
  }) = _CameraState;

  /// Factory constructor for initial state
  factory CameraState.initial() => CameraState(
        permissionStatus: PermissionStatus.notDetermined,
        capturedMedias: const [],
        isCapturing: false,
        isRecording: false,
        showCameraRoll: false,
        captureMode: CaptureMode.photo,
      );

  /// Get captured images from medias
  List<ImageMedia> get capturedImages =>
      capturedMedias.whereType<ImageMedia>().toList();

  /// Get captured videos from medias
  List<VideoMedia> get capturedVideos =>
      capturedMedias.whereType<VideoMedia>().toList();
}
