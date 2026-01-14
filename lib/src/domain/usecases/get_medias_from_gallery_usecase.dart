import 'package:dartz/dartz.dart';

import '../../core/options/media_selection_options.dart';
import '../entities/media_entity.dart';
import '../failures/media_failure.dart';
import '../repositories/media_repository.dart';
import '../repositories/permission_repository.dart';

/// Use case for getting media (images/videos) from the device gallery
///
/// This use case handles the complete flow of:
/// 1. Checking photos permission
/// 2. Requesting permission if not granted
/// 3. Getting mixed media from gallery
class GetMediasFromGalleryUsecase {
  final MediaRepository _mediaRepository;
  final PermissionRepository _permissionRepository;

  const GetMediasFromGalleryUsecase(
    this._mediaRepository,
    this._permissionRepository,
  );

  /// Execute the use case to get media from gallery
  ///
  /// [options] Media selection configuration
  /// Returns list of [MediaEntity] on success or [MediaFailure] on error
  Future<Either<MediaFailure, List<MediaEntity>>> execute({
    required MediaSelectionOptions options,
  }) async {
    // 1. Request photos permission
    final permissionResult = await _permissionRepository.requestPhotos();

    if (permissionResult.isLeft()) {
      return left(const MediaFailure.permissionDenied());
    }

    final hasPermission = permissionResult.getOrElse(() => false);
    if (!hasPermission) {
      return left(const MediaFailure.permissionDenied());
    }

    // 2. Get media from gallery
    return _mediaRepository.getMediasFromGallery(options: options);
  }
}
