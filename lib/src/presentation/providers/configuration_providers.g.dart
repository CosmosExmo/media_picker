// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for compression options
///
/// Override this provider to customize compression settings

@ProviderFor(compressionOptions)
final compressionOptionsProvider = CompressionOptionsProvider._();

/// Provider for compression options
///
/// Override this provider to customize compression settings

final class CompressionOptionsProvider
    extends
        $FunctionalProvider<
          CompressionOptions,
          CompressionOptions,
          CompressionOptions
        >
    with $Provider<CompressionOptions> {
  /// Provider for compression options
  ///
  /// Override this provider to customize compression settings
  CompressionOptionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'compressionOptionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$compressionOptionsHash();

  @$internal
  @override
  $ProviderElement<CompressionOptions> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CompressionOptions create(Ref ref) {
    return compressionOptions(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompressionOptions value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompressionOptions>(value),
    );
  }
}

String _$compressionOptionsHash() =>
    r'10285af29a913a2213b550273c00d40ae8838e92';

/// Provider for camera view options
///
/// Override this provider to customize camera view appearance

@ProviderFor(cameraViewOptions)
final cameraViewOptionsProvider = CameraViewOptionsProvider._();

/// Provider for camera view options
///
/// Override this provider to customize camera view appearance

final class CameraViewOptionsProvider
    extends
        $FunctionalProvider<
          CameraViewOptions,
          CameraViewOptions,
          CameraViewOptions
        >
    with $Provider<CameraViewOptions> {
  /// Provider for camera view options
  ///
  /// Override this provider to customize camera view appearance
  CameraViewOptionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cameraViewOptionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cameraViewOptionsHash();

  @$internal
  @override
  $ProviderElement<CameraViewOptions> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CameraViewOptions create(Ref ref) {
    return cameraViewOptions(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CameraViewOptions value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CameraViewOptions>(value),
    );
  }
}

String _$cameraViewOptionsHash() => r'6da5add2cdc09f8871e53d8d452764b5c21d845b';
