import 'dart:typed_data';

/// Abstract interface for image compression data source
///
/// Defines the contract for image compression operations.
/// Implementations should wrap the underlying compression library.
abstract class CompressionDataSource {
  /// Compress image data
  ///
  /// [data] The image data to compress
  /// Returns compressed image data as Uint8List
  /// Throws exception if compression fails
  Future<Uint8List> compress(Uint8List data);

  /// Compress image file and return compressed file path
  ///
  /// [sourcePath] The path to the image file to compress
  /// Returns the path to the compressed image file
  /// Throws exception if compression fails
  Future<String> compressToFile(String sourcePath);
}
