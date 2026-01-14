import 'package:permission_handler/permission_handler.dart' as ph;

import '../../../domain/enums/permission_status.dart';
import 'permission_datasource.dart';

/// Permission data source implementation using permission_handler
///
/// Wraps the permission_handler plugin to provide permission management functionality
class PermissionDataSourceImpl implements PermissionDataSource {
  /// Constructor
  const PermissionDataSourceImpl();

  @override
  Future<bool> requestCameraPermission() async {
    try {
      final status = await ph.Permission.camera.request();
      return status.isGranted || status.isLimited;
    } catch (e) {
      throw PermissionException('Failed to request camera permission: $e');
    }
  }

  @override
  Future<bool> requestPhotosPermission() async {
    try {
      final status = await ph.Permission.photos.request();
      return status.isGranted || status.isLimited;
    } catch (e) {
      throw PermissionException('Failed to request photos permission: $e');
    }
  }

  @override
  Future<bool> requestLocationPermission() async {
    try {
      final status = await ph.Permission.locationWhenInUse.request();
      return status.isGranted;
    } catch (e) {
      throw PermissionException('Failed to request location permission: $e');
    }
  }

  @override
  Future<PermissionStatus> checkCameraPermissionStatus() async {
    try {
      final status = await ph.Permission.camera.status;
      return _mapPermissionStatus(status);
    } catch (e) {
      throw PermissionException('Failed to check camera permission status: $e');
    }
  }

  @override
  Future<PermissionStatus> checkPhotosPermissionStatus() async {
    try {
      final status = await ph.Permission.photos.status;
      return _mapPermissionStatus(status);
    } catch (e) {
      throw PermissionException(
        'Failed to check photos permission status: $e',
      );
    }
  }

  /// Map permission_handler PermissionStatus to domain PermissionStatus
  PermissionStatus _mapPermissionStatus(ph.PermissionStatus status) {
    return switch (status) {
      ph.PermissionStatus.granted => PermissionStatus.granted,
      ph.PermissionStatus.denied => PermissionStatus.denied,
      ph.PermissionStatus.restricted => PermissionStatus.restricted,
      ph.PermissionStatus.limited => PermissionStatus.limited,
      ph.PermissionStatus.permanentlyDenied =>
        PermissionStatus.denied, // Map to denied (not in domain enum)
      ph.PermissionStatus.provisional =>
        PermissionStatus.limited, // iOS provisional → limited
    };
  }
}

/// Exception thrown when permission operations fail
class PermissionException implements Exception {
  final String message;

  PermissionException(this.message);

  @override
  String toString() => 'PermissionException: $message';
}
