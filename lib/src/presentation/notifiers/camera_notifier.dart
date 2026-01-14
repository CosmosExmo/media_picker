import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/providers.dart';
import '../../domain/entities/media_entity.dart';
import '../../domain/entities/media_metadata_entity.dart';
import '../../domain/enums/permission_status.dart';
import '../state/camera_state.dart';

part 'camera_notifier.g.dart';

/// Camera notifier for managing camera state and operations
///
/// Handles permission requests, image capture, and camera roll display
@riverpod
class CameraNotifier extends _$CameraNotifier {
  @override
  FutureOr<CameraState> build() async {
    // Initialize with permission check
    final permissionRepository = ref.read(permissionRepositoryProvider);
    final permissionResult = await permissionRepository.checkCameraPermission();

    return permissionResult.fold(
      (failure) => CameraState.initial().copyWith(
        permissionStatus: PermissionStatus.denied,
      ),
      (status) => CameraState.initial().copyWith(
        permissionStatus: status,
      ),
    );
  }

  /// Request camera permission from the user
  Future<void> requestPermission() async {
    state = const AsyncValue.loading();

    final permissionRepository = ref.read(permissionRepositoryProvider);
    final result = await permissionRepository.requestCamera();

    state = await AsyncValue.guard(() async {
      return result.fold(
        (failure) => throw failure,
        (hasPermission) => (state.value ?? CameraState.initial()).copyWith(
          permissionStatus: hasPermission
              ? PermissionStatus.granted
              : PermissionStatus.denied,
        ),
      );
    });
  }

  /// Add captured media to the state
  ///
  /// This is called from the UI after media is captured via CameraView
  void addCapturedMedia(MediaEntity media) {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(
        capturedMedias: [...currentState.capturedMedias, media],
        isCapturing: false,
      ),
    );
  }

  /// Add multiple captured medias to the state
  void addCapturedMedias(List<MediaEntity> medias) {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(
        capturedMedias: [...currentState.capturedMedias, ...medias],
        isCapturing: false,
      ),
    );
  }

  /// Remove a media from captured medias by ID
  void removeMedia(String mediaId) {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(
        capturedMedias: currentState.capturedMedias
            .where((media) => media.id != mediaId)
            .toList(),
      ),
    );
  }

  /// Remove media from captured medias by index
  void removeMediaByIndex(int index) {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    if (index < 0 || index >= currentState.capturedMedias.length) {
      return;
    }

    final updatedMedias = List<MediaEntity>.from(currentState.capturedMedias);
    updatedMedias.removeAt(index);

    state = AsyncValue.data(
      currentState.copyWith(capturedMedias: updatedMedias),
    );
  }

  /// Toggle camera roll visibility
  void toggleCameraRoll() {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(
        showCameraRoll: !currentState.showCameraRoll,
      ),
    );
  }

  /// Set current metadata for next capture
  void setCurrentMetadata(MediaMetadataEntity? metadata) {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(currentMetadata: metadata),
    );
  }

  /// Start video recording
  void startVideoRecording() {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(
        isRecording: true,
        recordingDurationSeconds: 0,
      ),
    );
  }

  /// Update recording duration (for UI timer)
  void updateRecordingDuration(int seconds) {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(recordingDurationSeconds: seconds),
    );
  }

  /// Stop video recording
  void stopVideoRecording() {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(isRecording: false),
    );
  }

  /// Set capture mode (photo/video/both)
  void setCaptureMode(CaptureMode mode) {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(captureMode: mode),
    );
  }

  /// Clear all captured media
  void clearAll() {
    final currentState = state.value;
    if (currentState == null) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(capturedMedias: []),
    );
  }

  /// Reset state to initial
  void reset() {
    state = AsyncValue.data(CameraState.initial());
  }
}
