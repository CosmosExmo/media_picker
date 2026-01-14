import '../../../domain/entities/media_entity.dart';
import '../../../domain/entities/media_metadata_entity.dart';
import '../video_dto.dart';

/// Mapper for converting between VideoDto and VideoMedia (MediaEntity)
///
/// Provides bidirectional conversion between data layer DTOs
/// and domain layer entities
class VideoMapper {
  const VideoMapper();

  /// Convert VideoDto to VideoMedia (MediaEntity.video)
  ///
  /// [dto] The data transfer object to convert
  /// [metadata] Optional domain metadata to attach
  MediaEntity dtoToEntity(
    VideoDto dto, {
    MediaMetadataEntity? metadata,
  }) {
    return MediaEntity.video(
      id: dto.id,
      path: dto.path,
      extension: dto.extension,
      fileName: dto.fileName,
      durationMs: dto.durationMs,
      width: dto.width,
      height: dto.height,
      fileSizeBytes: dto.fileSizeBytes,
      thumbnailPath: dto.thumbnailPath,
      frameRate: dto.frameRate,
      metadata: metadata ?? _metadataFromMap(dto.metadata),
    );
  }

  /// Convert VideoMedia (MediaEntity.video) to VideoDto
  ///
  /// [entity] The domain entity to convert
  VideoDto entityToDto(VideoMedia entity) {
    return VideoDto(
      id: entity.id,
      path: entity.path,
      extension: entity.extension,
      fileName: entity.fileName,
      durationMs: entity.durationMs,
      width: entity.width,
      height: entity.height,
      fileSizeBytes: entity.fileSizeBytes,
      thumbnailPath: entity.thumbnailPath,
      frameRate: entity.frameRate,
      metadata: _metadataToMap(entity.metadata),
    );
  }

  /// Convert metadata map to MediaMetadataEntity
  MediaMetadataEntity? _metadataFromMap(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }

    return MediaMetadataEntity(
      title: map['title'] as String?,
      description: map['description'] as String?,
      overlayImagePath: map['overlayImagePath'] as String?,
      overlayImageUrl: map['overlayImageUrl'] as String?,
    );
  }

  /// Convert MediaMetadataEntity to metadata map
  Map<String, dynamic>? _metadataToMap(MediaMetadataEntity? metadata) {
    if (metadata == null) {
      return null;
    }

    return {
      if (metadata.title != null) 'title': metadata.title,
      if (metadata.description != null) 'description': metadata.description,
      if (metadata.overlayImagePath != null)
        'overlayImagePath': metadata.overlayImagePath,
      if (metadata.overlayImageUrl != null)
        'overlayImageUrl': metadata.overlayImageUrl,
    };
  }
}

