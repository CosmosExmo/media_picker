import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'video_dto.freezed.dart';

/// Data Transfer Object for video data
///
/// Path-based to avoid memory issues with large video files
@freezed
abstract class VideoDto with _$VideoDto {
  const VideoDto._();

  factory VideoDto({
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
    Map<String, dynamic>? metadata,
  }) = _VideoDto;

  /// Create VideoDto from file path
  factory VideoDto.fromPath(String path) {
    return VideoDto(
      id: const Uuid().v4(),
      path: path,
      extension: path.split('.').last,
      fileName: path.split('/').last,
    );
  }
}
