import 'package:dartz/dartz.dart';

import '../../core/options/media_selection_options.dart';
import '../entities/media_entity.dart';
import '../failures/media_failure.dart';

/// Unified repository interface for all media operations
///
/// Provides three clean methods for getting media from different sources:
/// - Camera (images/videos only)
/// - Gallery (images/videos only)
/// - Files (images/videos/documents)
abstract class MediaRepository {
  /// Get media from camera
  ///
  /// Supports images and videos only (documents not supported by camera).
  /// Configuration through [options.cameraConfig].
  ///
  /// Returns list of [MediaEntity] on success or [MediaFailure] on error
  Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromCamera({
    required MediaSelectionOptions options,
  });

  /// Get media from gallery
  ///
  /// Supports images and videos only (documents not supported by gallery).
  /// Use getMediasFromFiles for documents.
  ///
  /// Returns list of [MediaEntity] on success or [MediaFailure] on error
  Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromGallery({
    required MediaSelectionOptions options,
  });

  /// Get media from files
  ///
  /// Supports images, videos, and documents.
  /// Primary way to pick documents (PDF, DOCX, etc.).
  ///
  /// Returns list of [MediaEntity] on success or [MediaFailure] on error
  Future<Either<MediaFailure, List<MediaEntity>>> getMediasFromFiles({
    required MediaSelectionOptions options,
  });
}
