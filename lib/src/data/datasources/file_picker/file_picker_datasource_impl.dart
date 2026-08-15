import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart' show visibleForTesting;
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
      // file_picker 12: pickFiles is static, multi-select by default, and
      // returns the files directly instead of a nullable FilePickerResult.
      final files = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: allowedExtensions,
      );

      if (files.isEmpty) {
        return []; // User cancelled or no files selected
      }

      final List<ImageDto> dtos = [];

      for (final file in files) {
        // file_picker 12 dropped PlatformFile.extension — derive it from the name.
        final extension = extensionOf(file.name) ?? 'unknown';

        // Get the file path (create temp file from bytes if on web)
        final String filePath;
        if (file.path != null && file.path!.isNotEmpty) {
          filePath = file.path!;
        } else {
          // Web: no path — materialize the bytes into a temp file.
          // file_picker 12 deprecated `withData`; bytes are read on demand.
          filePath = await PathService.generateTempFilePath(extension: extension);
          await File(filePath).writeAsBytes(await file.readAsBytes());
        }

        dtos.add(
          ImageDto(
            id: const Uuid().v4(),
            path: filePath,
            extension: extension,
            fileName: file.name,
          ),
        );
      }

      return dtos;
    } catch (e) {
      throw FilePickerException('Failed to pick files: $e');
    }
  }

  /// Extension without the dot, or null when the name carries none.
  /// Leading-dot names ("`.gitignore`") count as extensionless.
  @visibleForTesting
  static String? extensionOf(String name) {
    final dot = name.lastIndexOf('.');
    if (dot <= 0 || dot == name.length - 1) {
      return null;
    }
    return name.substring(dot + 1);
  }
}

/// Exception thrown when file picker operations fail
class FilePickerException implements Exception {
  final String message;

  FilePickerException(this.message);

  @override
  String toString() => 'FilePickerException: $message';
}
