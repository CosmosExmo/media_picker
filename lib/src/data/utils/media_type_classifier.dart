import '../../domain/entities/media_entity.dart';

/// Utility class for classifying media types based on file extensions
class MediaTypeClassifier {
  MediaTypeClassifier._(); // Private constructor to prevent instantiation

  static const _imageExtensions = [
    'jpg',
    'jpeg',
    'png',
    'heic',
    'webp',
    'gif',
    'bmp',
    'tiff',
  ];

  static const _videoExtensions = [
    'mp4',
    'mov',
    'avi',
    'mkv',
    'wmv',
    'flv',
    'm4v',
    'webm',
  ];

  static const _documentExtensions = [
    'pdf',
    'doc',
    'docx',
    'txt',
    'rtf',
    'odt',
    'xls',
    'xlsx',
    'ppt',
    'pptx',
  ];

  /// Classify media type based on file extension
  /// Returns MediaType.unknown if extension is not recognized
  static MediaType classify(String extension) {
    final ext = extension.toLowerCase().replaceAll('.', '');

    if (_imageExtensions.contains(ext)) {
      return MediaType.image;
    }

    if (_videoExtensions.contains(ext)) {
      return MediaType.video;
    }

    if (_documentExtensions.contains(ext)) {
      return MediaType.document;
    }

    // Unknown extension
    throw UnrecognizedMediaTypeException(
      'Unrecognized file extension: $extension',
    );
  }

  /// Check if extension is an image
  static bool isImage(String extension) {
    final ext = extension.toLowerCase().replaceAll('.', '');
    return _imageExtensions.contains(ext);
  }

  /// Check if extension is a video
  static bool isVideo(String extension) {
    final ext = extension.toLowerCase().replaceAll('.', '');
    return _videoExtensions.contains(ext);
  }

  /// Check if extension is a document
  static bool isDocument(String extension) {
    final ext = extension.toLowerCase().replaceAll('.', '');
    return _documentExtensions.contains(ext);
  }

  /// Get all supported image extensions
  static List<String> get imageExtensions =>
      List.unmodifiable(_imageExtensions);

  /// Get all supported video extensions
  static List<String> get videoExtensions =>
      List.unmodifiable(_videoExtensions);

  /// Get all supported document extensions
  static List<String> get documentExtensions =>
      List.unmodifiable(_documentExtensions);
}

/// Exception thrown when a file extension is not recognized
class UnrecognizedMediaTypeException implements Exception {
  final String message;

  UnrecognizedMediaTypeException(this.message);

  @override
  String toString() => 'UnrecognizedMediaTypeException: $message';
}
