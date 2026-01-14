import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_metadata_entity.dart';

part 'media_entity.freezed.dart';

/// Sealed class representing different media types (Image/Video/Document)
/// Uses path-based storage for memory efficiency
@freezed
sealed class MediaEntity with _$MediaEntity {
  const MediaEntity._();

  /// Image media - path-based storage
  const factory MediaEntity.image({
    required String id,
    required String path,
    required String extension,
    String? fileName,
    int? width,
    int? height,
    int? fileSizeBytes,
    MediaMetadataEntity? metadata,
  }) = ImageMedia;

  /// Video media - path-based storage
  const factory MediaEntity.video({
    required String id,
    required String path,
    required String extension,
    String? fileName,
    int? durationMs,
    int? width,
    int? height,
    int? fileSizeBytes,
    String? thumbnailPath,
    double? frameRate,
    MediaMetadataEntity? metadata,
  }) = VideoMedia;

  /// Document media - path-based storage
  const factory MediaEntity.document({
    required String id,
    required String path,
    required String extension,
    String? fileName,
    int? pageCount,
    int? fileSizeBytes,
    String? mimeType,
    MediaMetadataEntity? metadata,
  }) = DocumentMedia;

  /// Convenience getter for media type
  MediaType get type => switch (this) {
        ImageMedia() => MediaType.image,
        VideoMedia() => MediaType.video,
        DocumentMedia() => MediaType.document,
      };
}

/// Enum representing media types
enum MediaType {
  image,
  video,
  document,
}
