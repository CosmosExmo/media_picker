import 'package:flutter/widgets.dart';
import 'package:native_device_orientation/native_device_orientation.dart';

/// Utility class for device orientation calculations
///
/// Provides methods for:
/// - Tablet detection based on screen size
/// - Android tablet orientation mapping (sensor reports differently)
/// - Quarter turns calculation for RotatedBox
abstract final class OrientationUtils {
  /// Threshold for tablet detection (shortest side in logical pixels)
  static const double tabletThreshold = 600.0;

  /// Check if device is a tablet based on screen size
  static bool isTablet(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return size.shortestSide >= tabletThreshold;
  }

  /// Map orientation for Android tablets where sensor reports differently
  ///
  /// Android tablets report portrait when in landscape and vice versa.
  /// iOS devices don't need this mapping.
  static NativeDeviceOrientation mapForDevice(
    NativeDeviceOrientation orientation,
    BuildContext context,
  ) {
// Only Android tablets need mapping
    // if (!Platform.isAndroid || !isTablet(context)) {
    //   return orientation;
    // }

    // return switch (orientation) {
    //   NativeDeviceOrientation.portraitUp => NativeDeviceOrientation.landscapeLeft,
    //   NativeDeviceOrientation.portraitDown => NativeDeviceOrientation.landscapeRight,
    //   NativeDeviceOrientation.landscapeLeft => NativeDeviceOrientation.portraitDown,
    //   NativeDeviceOrientation.landscapeRight => NativeDeviceOrientation.portraitUp,
    //   _ => orientation,
    // };
    return orientation;
  }

  /// Calculate rotation quarter turns for RotatedBox widget
  ///
  /// Returns:
  /// - `-1` for landscapeLeft (90° clockwise)
  /// - `1` for landscapeRight (90° counter-clockwise)
  /// - `2` for portraitDown (180°)
  /// - `0` for portraitUp (no rotation)
  static int calculateQuarterTurns(NativeDeviceOrientation orientation) {
    return switch (orientation) {
      NativeDeviceOrientation.landscapeLeft => -1,
      NativeDeviceOrientation.landscapeRight => 1,
      NativeDeviceOrientation.portraitDown => 2,
      _ => 0,
    };
  }
}
