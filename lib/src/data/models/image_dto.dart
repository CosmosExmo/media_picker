import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'image_dto.freezed.dart';

/// Data Transfer Object for image data
///
/// Path-based to ensure memory efficiency and consistency
@freezed
abstract class ImageDto with _$ImageDto {
  const ImageDto._();

  factory ImageDto({
    required String id,
    required String path,
    required String extension,
    String? fileName,
    int? width,
    int? height,
    int? fileSizeBytes,
    Map<String, dynamic>? metadata,
  }) = _ImageDto;

  /// Create ImageDto from file path
  factory ImageDto.fromPath(String path) {
    return ImageDto(
      id: const Uuid().v4(),
      path: path,
      extension: path.split('.').last,
      fileName: path.split('/').last,
    );
  }
}
