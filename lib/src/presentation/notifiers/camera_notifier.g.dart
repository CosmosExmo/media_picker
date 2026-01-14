// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Camera notifier for managing camera state and operations
///
/// Handles permission requests, image capture, and camera roll display

@ProviderFor(CameraNotifier)
final cameraProvider = CameraNotifierProvider._();

/// Camera notifier for managing camera state and operations
///
/// Handles permission requests, image capture, and camera roll display
final class CameraNotifierProvider
    extends $AsyncNotifierProvider<CameraNotifier, CameraState> {
  /// Camera notifier for managing camera state and operations
  ///
  /// Handles permission requests, image capture, and camera roll display
  CameraNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cameraProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cameraNotifierHash();

  @$internal
  @override
  CameraNotifier create() => CameraNotifier();
}

String _$cameraNotifierHash() => r'5d621a3cfe53551a4f519996c2a99cbf8c1253a8';

/// Camera notifier for managing camera state and operations
///
/// Handles permission requests, image capture, and camera roll display

abstract class _$CameraNotifier extends $AsyncNotifier<CameraState> {
  FutureOr<CameraState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<CameraState>, CameraState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<CameraState>, CameraState>,
              AsyncValue<CameraState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
