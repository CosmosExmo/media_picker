import '../../../domain/entities/media_entity.dart';
import '../../../domain/entities/media_metadata_entity.dart';
import '../document_dto.dart';

/// Mapper for converting between DocumentDto and DocumentMedia (MediaEntity)
///
/// Provides bidirectional conversion between data layer DTOs
/// and domain layer entities
class DocumentMapper {
  const DocumentMapper();

  /// Convert DocumentDto to DocumentMedia (MediaEntity.document)
  ///
  /// [dto] The data transfer object to convert
  /// [metadata] Optional domain metadata to attach
  MediaEntity dtoToEntity(
    DocumentDto dto, {
    MediaMetadataEntity? metadata,
  }) {
    return MediaEntity.document(
      id: dto.id,
      path: dto.path,
      extension: dto.extension,
      fileName: dto.fileName,
      pageCount: dto.pageCount,
      fileSizeBytes: dto.fileSizeBytes,
      mimeType: dto.mimeType,
      metadata: metadata ?? _metadataFromMap(dto.metadata),
    );
  }

  /// Convert DocumentMedia (MediaEntity.document) to DocumentDto
  ///
  /// [entity] The domain entity to convert
  DocumentDto entityToDto(DocumentMedia entity) {
    return DocumentDto(
      id: entity.id,
      path: entity.path,
      extension: entity.extension,
      fileName: entity.fileName,
      pageCount: entity.pageCount,
      fileSizeBytes: entity.fileSizeBytes,
      mimeType: entity.mimeType,
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
