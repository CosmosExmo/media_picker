import 'package:flutter/widgets.dart';
import 'package:native_device_orientation/native_device_orientation.dart';

import '../../core/utils/orientation_utils.dart';

/// A widget that handles device orientation and rotates its child accordingly
///
/// Uses sensor-based orientation detection for accurate results even when
/// screen rotation is locked. Automatically handles Android tablet orientation
/// mapping where sensors report differently.
///
/// Example:
/// ```dart
/// OrientationAwareCamera(
///   child: CameraPreview(),
/// )
/// ```
class OrientationAwareCamera extends StatelessWidget {
  /// The child widget to be rotated based on device orientation
  final Widget child;

  const OrientationAwareCamera({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return NativeDeviceOrientationReader(
      useSensor: true,
      builder: (context) {
        final rawOrientation = NativeDeviceOrientationReader.orientation(context);
        final orientation = OrientationUtils.mapForDevice(rawOrientation, context);
        final quarterTurns = OrientationUtils.calculateQuarterTurns(orientation);

        return RotatedBox(
          quarterTurns: quarterTurns,
          child: child,
        );
      },
    );
  }
}
