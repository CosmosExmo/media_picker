import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_entity.freezed.dart';

/// Immutable video entity representing captured or selected video data
///
/// Unlike ImageEntity which stores data in Uint8List, VideoEntity is path-based
/// to avoid memory issues with large video files.
@freezed
abstract class VideoEntity with _$VideoEntity {
  const VideoEntity._();

  factory VideoEntity({
    required String id,
    required String path,
    required String extension,
    String? fileName,
    int? durationMs,
    int? width,
    int? height,
    String? thumbnailPath,
    VideoMetadataEntity? metadata,
  }) = _VideoEntity;
}

/// Immutable video metadata entity
@freezed
abstract class VideoMetadataEntity with _$VideoMetadataEntity {
  const VideoMetadataEntity._();

  factory VideoMetadataEntity({
    String? title,
    String? description,
    DateTime? capturedAt,
    Map<String, dynamic>? customData,
    String? overlayImagePath,
    double? frameRate,
  }) = _VideoMetadataEntity;

  factory VideoMetadataEntity.empty() => VideoMetadataEntity();
}
