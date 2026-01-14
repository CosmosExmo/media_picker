import 'package:dartz/dartz.dart';

import '../../domain/enums/permission_status.dart';
import '../../domain/failures/media_failure.dart';
import '../../domain/repositories/permission_repository.dart';
import '../datasources/permission/permission_datasource.dart';
import '../datasources/permission/permission_datasource_impl.dart';

/// Implementation of PermissionRepository interface
///
/// Handles permission requests and status checks through the permission data source
class PermissionRepositoryImpl implements PermissionRepository {
  final PermissionDataSource _permissionDataSource;

  const PermissionRepositoryImpl({
    required PermissionDataSource permissionDataSource,
  }) : _permissionDataSource = permissionDataSource;

  @override
  Future<Either<MediaFailure, bool>> requestCamera() async {
    try {
      final isGranted = await _permissionDataSource.requestCameraPermission();
      return right(isGranted);
    } on PermissionException catch (e) {
      return left(MediaFailure.unknown(e.message));
    } catch (e) {
      return left(MediaFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<MediaFailure, bool>> requestPhotos() async {
    try {
      final isGranted = await _permissionDataSource.requestPhotosPermission();
      return right(isGranted);
    } on PermissionException catch (e) {
      return left(MediaFailure.unknown(e.message));
    } catch (e) {
      return left(MediaFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<MediaFailure, bool>> requestLocation() async {
    try {
      final isGranted = await _permissionDataSource.requestLocationPermission();
      return right(isGranted);
    } on PermissionException catch (e) {
      return left(MediaFailure.unknown(e.message));
    } catch (e) {
      return left(MediaFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<MediaFailure, PermissionStatus>> checkCameraPermission() async {
    try {
      final status = await _permissionDataSource.checkCameraPermissionStatus();
      return right(status);
    } on PermissionException catch (e) {
      return left(MediaFailure.unknown(e.message));
    } catch (e) {
      return left(MediaFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<MediaFailure, PermissionStatus>> checkPhotosPermission() async {
    try {
      final status = await _permissionDataSource.checkPhotosPermissionStatus();
      return right(status);
    } on PermissionException catch (e) {
      return left(MediaFailure.unknown(e.message));
    } catch (e) {
      return left(MediaFailure.unknown(e.toString()));
    }
  }
}
