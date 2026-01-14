import 'package:dartz/dartz.dart';

import '../../core/options/media_selection_options.dart';
import '../entities/media_entity.dart';
import '../failures/media_failure.dart';
import '../repositories/media_repository.dart';

/// Use case for getting media (images/videos/documents) from file picker
///
/// This use case handles getting files from the file system.
/// No permission check needed for file picker.
class GetMediasFromFilesUsecase {
  final MediaRepository _mediaRepository;

  const GetMediasFromFilesUsecase(this._mediaRepository);

  /// Execute the use case to get media from files
  ///
  /// [options] Media selection configuration
  /// Returns list of [MediaEntity] on success or [MediaFailure] on error
  Future<Either<MediaFailure, List<MediaEntity>>> execute({
    required MediaSelectionOptions options,
  }) async {
    return _mediaRepository.getMediasFromFiles(options: options);
  }
}
