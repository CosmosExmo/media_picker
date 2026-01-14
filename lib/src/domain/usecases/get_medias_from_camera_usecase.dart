import 'package:dartz/dartz.dart';

import '../../core/options/media_selection_options.dart';
import '../entities/media_entity.dart';
import '../failures/media_failure.dart';
import '../repositories/media_repository.dart';
import '../repositories/permission_repository.dart';

/// Use case for getting media (images/videos) from the device camera
///
/// This use case handles the complete flow of:
/// 1. Checking camera permission
/// 2. Requesting permission if not granted
/// 3. Getting media from camera (via CameraView UI)
class GetMediasFromCameraUsecase {
  final MediaRepository _mediaRepository;
  final PermissionRepository _permissionRepository;

  const GetMediasFromCameraUsecase(
    this._mediaRepository,
    this._permissionRepository,
  );

  /// Execute the use case to get media from camera
  ///
  /// [options] Media selection configuration
  /// Returns list of [MediaEntity] on success or [MediaFailure] on error
  Future<Either<MediaFailure, List<MediaEntity>>> execute({
    required MediaSelectionOptions options,
  }) async {
    // 1. Request camera permission
    final permissionResult = await _permissionRepository.requestCamera();

    if (permissionResult.isLeft()) {
      return left(const MediaFailure.permissionDenied());
    }

    final hasPermission = permissionResult.getOrElse(() => false);
    if (!hasPermission) {
      return left(const MediaFailure.permissionDenied());
    }

    // 2. Get media from camera (note: actual capture handled by CameraView UI)
    return _mediaRepository.getMediasFromCamera(options: options);
  }
}
