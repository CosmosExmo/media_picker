import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

/// Service for managing file paths and temp file generation
class PathService {
  PathService._(); // Private constructor

  static final _uuid = Uuid();

  /// Generate a temporary file path with the given extension
  /// Returns an absolute path to a temporary file
  static Future<String> generateTempFilePath({
    required String extension,
  }) async {
    final tempDir = await getTemporaryDirectory();
    final fileName = '${_uuid.v4()}.$extension';
    final filePath = '${tempDir.path}/$fileName';
    return filePath;
  }

  /// Generate a unique filename with extension
  static String generateUniqueFilename({
    required String extension,
    String? prefix,
  }) {
    final uniqueId = _uuid.v4();
    final name = prefix != null ? '${prefix}_$uniqueId' : uniqueId;
    return '$name.$extension';
  }

  /// Get the application's temporary directory
  static Future<Directory> getTempDirectory() async {
    return await getTemporaryDirectory();
  }

  /// Get the application's documents directory
  static Future<Directory> getDocumentsDirectory() async {
    return await getApplicationDocumentsDirectory();
  }

  /// Extract extension from filename or path
  static String getExtension(String filePathOrName) {
    final parts = filePathOrName.split('.');
    if (parts.length > 1) {
      return parts.last.toLowerCase();
    }
    return '';
  }

  /// Check if a file exists at the given path
  static Future<bool> fileExists(String path) async {
    final file = File(path);
    return await file.exists();
  }

  /// Delete file at path if it exists
  static Future<void> deleteFile(String path) async {
    try {
      final file = File(path);
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      // Silently fail - file deletion is not critical
    }
  }

  /// Get file size in bytes
  static Future<int?> getFileSize(String path) async {
    try {
      final file = File(path);
      if (await file.exists()) {
        return await file.length();
      }
    } catch (e) {
      // Return null if unable to get size
    }
    return null;
  }

  /// Copy file from source to destination
  static Future<String> copyFile({
    required String sourcePath,
    required String destinationPath,
  }) async {
    final sourceFile = File(sourcePath);
    final destinationFile = await sourceFile.copy(destinationPath);
    return destinationFile.path;
  }
}
