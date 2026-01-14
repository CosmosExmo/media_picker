import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';

import '../../../core/options/compression_options.dart';
import '../../services/path_service.dart';
import 'compression_datasource.dart';

/// Compression data source implementation using flutter_image_compress
///
/// Wraps the flutter_image_compress plugin to provide image compression functionality
class CompressionDataSourceImpl implements CompressionDataSource {
  final CompressionOptions options;

  const CompressionDataSourceImpl(this.options);

  @override
  Future<Uint8List> compress(Uint8List data) async {
    try {
      final compressed = await FlutterImageCompress.compressWithList(
        data,
        minWidth: options.minWidth,
        minHeight: options.minHeight,
        quality: options.quality,
        rotate: options.rotate,
        inSampleSize: options.inSampleSize,
        autoCorrectionAngle: options.autoCorrectionAngle,
        format: options.format,
        keepExif: options.keepExif,
      );

      return compressed;
    } catch (e) {
      throw CompressionException('Failed to compress image: $e');
    }
  }

  /// Compress image at path and return compressed file path
  ///
  /// This is the path-based compression method used in the unified API
  @override
  Future<String> compressToFile(String sourcePath) async {
    try {
      // Generate temp file path for compressed image
      final targetPath = await PathService.generateTempFilePath(extension: 'jpg');

      // Compress and save to file
      final result = await FlutterImageCompress.compressAndGetFile(
        sourcePath,
        targetPath,
        minWidth: options.minWidth,
        minHeight: options.minHeight,
        quality: options.quality,
        rotate: options.rotate,
        autoCorrectionAngle: options.autoCorrectionAngle,
        format: options.format,
        keepExif: options.keepExif,
      );

      if (result == null) {
        throw CompressionException('Compression returned null result');
      }

      return result.path;
    } catch (e) {
      throw CompressionException('Failed to compress image file: $e');
    }
  }
}

/// Exception thrown when compression operations fail
class CompressionException implements Exception {
  final String message;

  CompressionException(this.message);

  @override
  String toString() => 'CompressionException: $message';
}
