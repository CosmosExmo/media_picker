import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/options/camera_view_options.dart';
import '../../core/options/compression_options.dart';

part 'configuration_providers.g.dart';

/// Provider for compression options
///
/// Override this provider to customize compression settings
@riverpod
CompressionOptions compressionOptions(Ref ref) {
  return const CompressionOptions(
    quality: 85,
    minWidth: 1920,
    minHeight: 1080,
  );
}

/// Provider for camera view options
///
/// Override this provider to customize camera view appearance
@riverpod
CameraViewOptions cameraViewOptions(Ref ref) {
  return const CameraViewOptions();
}
