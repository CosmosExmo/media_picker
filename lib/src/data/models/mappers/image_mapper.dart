import '../../../domain/entities/media_entity.dart';
import '../../../domain/entities/media_metadata_entity.dart';
import '../image_dto.dart';

/// Mapper for converting between ImageDto and ImageMedia (MediaEntity)
///
/// Provides bidirectional conversion between data layer DTOs
/// and domain layer entities
class ImageMapper {
  const ImageMapper();

  /// Convert ImageDto to ImageMedia (MediaEntity.image)
  ///
  /// [dto] The data transfer object to convert
  /// [metadata] Optional domain metadata to attach
  MediaEntity dtoToEntity(
    ImageDto dto, {
    MediaMetadataEntity? metadata,
  }) {
    return MediaEntity.image(
      id: dto.id,
      path: dto.path,
      extension: dto.extension,
      fileName: dto.fileName,
      width: dto.width,
      height: dto.height,
      fileSizeBytes: dto.fileSizeBytes,
      metadata: metadata ?? _metadataFromMap(dto.metadata),
    );
  }

  /// Convert ImageMedia (MediaEntity.image) to ImageDto
  ///
  /// [entity] The domain entity to convert
  ImageDto entityToDto(ImageMedia entity) {
    return ImageDto(
      id: entity.id,
      path: entity.path,
      extension: entity.extension,
      fileName: entity.fileName,
      width: entity.width,
      height: entity.height,
      fileSizeBytes: entity.fileSizeBytes,
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
