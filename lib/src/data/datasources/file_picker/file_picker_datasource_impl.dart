import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';

import '../../models/image_dto.dart';
import '../../services/path_service.dart';
import 'file_picker_datasource.dart';

/// File picker data source implementation using file_picker plugin
///
/// Wraps the file_picker plugin to provide file system selection functionality
/// Primarily used for web platform
class FilePickerDataSourceImpl implements FilePickerDataSource {
  const FilePickerDataSourceImpl();

  @override
  Future<List<ImageDto>> pickFiles({
    required List<String> allowedExtensions,
  }) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: allowedExtensions,
        allowMultiple: true,
        withData: true, // Read file bytes (important for web)
      );

      if (result == null || result.files.isEmpty) {
        return []; // User cancelled or no files selected
      }

      final List<ImageDto> dtos = [];

      for (final file in result.files) {
        // Get the file path (create temp file from bytes if on web)
        final String filePath;
        if (file.path != null && file.path!.isNotEmpty) {
          filePath = file.path!;
        } else if (file.bytes != null) {
          // Web: Save bytes to temp file
          final extension = file.extension ?? 'unknown';
          filePath = await PathService.generateTempFilePath(extension: extension);
          await File(filePath).writeAsBytes(file.bytes!);
        } else {
          continue; // Skip files without path or bytes
        }

        dtos.add(
          ImageDto(
            id: const Uuid().v4(),
            path: filePath,
            extension: file.extension ?? 'unknown',
            fileName: file.name,
          ),
        );
      }

      return dtos;
    } catch (e) {
      throw FilePickerException('Failed to pick files: $e');
    }
  }

  /// Pick mixed media files (images/videos/documents)
  ///
  /// Returns a list of PlatformFile objects that can be converted to appropriate DTOs
  Future<List<PlatformFile>> pickMixedMediaFiles({
    List<String>? allowedExtensions,
  }) async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: allowedExtensions != null
            ? FileType.custom
            : FileType.any,
        allowedExtensions: allowedExtensions,
        allowMultiple: true,
        withData: true, // Read file bytes (important for web)
      );

      if (result == null || result.files.isEmpty) {
        return []; // User cancelled or no files selected
      }

      return result.files;
    } catch (e) {
      throw FilePickerException('Failed to pick media files: $e');
    }
  }
}

/// Exception thrown when file picker operations fail
class FilePickerException implements Exception {
  final String message;

  FilePickerException(this.message);

  @override
  String toString() => 'FilePickerException: $message';
}
