import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_metadata_entity.freezed.dart';

/// Unified metadata entity for all media types (Image/Video/Document)
/// Simple metadata with title, description, and overlay support
@freezed
abstract class MediaMetadataEntity with _$MediaMetadataEntity {
  const MediaMetadataEntity._();

  const factory MediaMetadataEntity({
    String? title,
    String? description,
    String? overlayImagePath,
    String? overlayImageUrl,
  }) = _MediaMetadataEntity;

  factory MediaMetadataEntity.empty() => const MediaMetadataEntity();
}
