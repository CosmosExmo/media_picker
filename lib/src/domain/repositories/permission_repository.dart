import 'package:dartz/dartz.dart';

import '../enums/permission_status.dart';
import '../failures/media_failure.dart';

/// Abstract repository interface for permission management
///
/// This interface defines the contract for requesting and checking
/// various permissions required for camera and media access.
abstract class PermissionRepository {
  /// Request camera permission from the user
  ///
  /// Returns true if permission is granted, false otherwise
  Future<Either<MediaFailure, bool>> requestCamera();

  /// Request media/photos permission from the user
  ///
  /// Returns true if permission is granted, false otherwise
  Future<Either<MediaFailure, bool>> requestPhotos();

  /// Request location permission (for image metadata)
  ///
  /// Returns true if permission is granted, false otherwise
  Future<Either<MediaFailure, bool>> requestLocation();

  /// Check current camera permission status
  ///
  /// Returns the current [PermissionStatus]
  Future<Either<MediaFailure, PermissionStatus>> checkCameraPermission();

  /// Check current photos permission status
  ///
  /// Returns the current [PermissionStatus]
  Future<Either<MediaFailure, PermissionStatus>> checkPhotosPermission();
}
