import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_entity.freezed.dart';

/// Immutable image entity representing captured or selected image data
@freezed
abstract class ImageEntity with _$ImageEntity {
  const ImageEntity._();

  factory ImageEntity({
    required String id,
    required Uint8List data,
    required String extension,
    required String path,
    String? fileName,
    ImageMetadataEntity? metadata,
  }) = _ImageEntity;
}

/// Immutable image metadata entity
@freezed
abstract class ImageMetadataEntity with _$ImageMetadataEntity {
  const ImageMetadataEntity._();

  factory ImageMetadataEntity({
    String? title,
    String? description,
    DateTime? capturedAt,
    Map<String, dynamic>? customData,
    String? overlayImagePath,
    String? overlayImageUrl,
  }) = _ImageMetadataEntity;

  factory ImageMetadataEntity.empty() => ImageMetadataEntity();
}
