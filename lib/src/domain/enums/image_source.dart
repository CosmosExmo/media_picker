/// Represents the source from which images are captured or selected
enum ImageSource {
  /// Capture image from device camera
  camera,

  /// Select images from device gallery
  gallery,

  /// Select files from file system (primarily for web)
  files,
}
