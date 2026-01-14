import '../../../domain/enums/permission_status.dart';

/// Abstract interface for permission data source
///
/// Defines the contract for permission management operations.
/// Implementations should wrap the underlying permission plugin.
abstract class PermissionDataSource {
  /// Request camera permission
  ///
  /// Returns true if permission is granted
  Future<bool> requestCameraPermission();

  /// Request photos/media permission
  ///
  /// Returns true if permission is granted
  Future<bool> requestPhotosPermission();

  /// Request location permission
  ///
  /// Returns true if permission is granted
  Future<bool> requestLocationPermission();

  /// Check current camera permission status
  ///
  /// Returns the current [PermissionStatus]
  Future<PermissionStatus> checkCameraPermissionStatus();

  /// Check current photos permission status
  ///
  /// Returns the current [PermissionStatus]
  Future<PermissionStatus> checkPhotosPermissionStatus();
}
