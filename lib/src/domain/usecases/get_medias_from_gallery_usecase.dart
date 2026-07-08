import 'package:dartz/dartz.dart';

import '../../core/options/media_selection_options.dart';
import '../entities/media_entity.dart';
import '../failures/media_failure.dart';
import '../repositories/media_repository.dart';

/// Use case for getting media (images/videos) from the device gallery
///
/// No runtime permission is required: Android uses the system Photo Picker
/// and iOS uses PHPicker, both of which run out-of-process and grant access
/// only to the user-selected items. Requesting Permission.photos here would
/// force apps to declare READ_MEDIA_IMAGES/READ_MEDIA_VIDEO, which Google
/// Play rejects under the Photo and Video Permissions policy.
class GetMediasFromGalleryUsecase {
  final MediaRepository _mediaRepository;

  const GetMediasFromGalleryUsecase(this._mediaRepository);

  /// Execute the use case to get media from gallery
  ///
  /// [options] Media selection configuration
  /// Returns list of [MediaEntity] on success or [MediaFailure] on error
  Future<Either<MediaFailure, List<MediaEntity>>> execute({
    required MediaSelectionOptions options,
  }) async {
    return _mediaRepository.getMediasFromGallery(options: options);
  }
}
