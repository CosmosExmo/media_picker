import '../../models/image_dto.dart';

/// Abstract interface for file picker data source
///
/// Defines the contract for file system picking operations.
/// Primarily used for web platform support.
abstract class FilePickerDataSource {
  /// Pick files from the file system
  ///
  /// [allowedExtensions] List of allowed file extensions
  /// Returns list of [ImageDto] containing selected files
  /// Throws exception if picking fails
  Future<List<ImageDto>> pickFiles({
    required List<String> allowedExtensions,
  });
}
