import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'document_dto.freezed.dart';

/// Data Transfer Object for document data
///
/// Path-based to avoid memory issues with large document files
@freezed
abstract class DocumentDto with _$DocumentDto {
  const DocumentDto._();

  factory DocumentDto({
    required String id,
    required String path,
    required String extension,
    String? fileName,
    int? pageCount,
    int? fileSizeBytes,
    String? mimeType,
    Map<String, dynamic>? metadata,
  }) = _DocumentDto;

  /// Create DocumentDto from file path
  factory DocumentDto.fromPath(String path) {
    return DocumentDto(
      id: const Uuid().v4(),
      path: path,
      extension: path.split('.').last,
      fileName: path.split('/').last,
    );
  }
}
