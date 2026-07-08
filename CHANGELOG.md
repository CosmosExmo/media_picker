# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.8] - 2026-07-09

### 🔒 Google Play Photo and Video Permissions Policy Compliance

- **Android Photo Picker enabled**: gallery picking now uses the system Photo
  Picker (`useAndroidPhotoPicker = true`), which runs out-of-process and needs
  no `READ_MEDIA_IMAGES` / `READ_MEDIA_VIDEO` permission. Devices without
  Photo Picker support fall back to the legacy intent automatically.
- **Removed `Permission.photos` gate from the gallery flow**: neither the
  Android Photo Picker nor iOS PHPicker requires a runtime photo permission.
  Consumer apps can now drop `READ_MEDIA_IMAGES` / `READ_MEDIA_VIDEO` from
  their manifests entirely.
- **`maxImages`/`maxVideos` null = unlimited now works for gallery**: passing
  null limits no longer fails with "At least one of maxImages or maxVideos
  must be greater than 0"; the limit is simply omitted (the OS picker may
  still enforce its own cap, e.g. `MediaStore.getPickImagesMaxLimit()`).

## [1.0.0] - 2025-12-20

### 🎉 Initial Release - Unified Media API

First official release of the media_picker package with a clean, unified API for managing images, videos, and documents in Flutter applications.

### ✨ Features

#### Unified Media API
- **Three Simple Methods**: All media operations through `getMediasFromCamera`, `getMediasFromGallery`, and `getMediasFromFiles`
- **Mixed Media Selection**: Pick multiple media types in a single call (e.g., 5 images + 3 videos + 10 documents)
- **Type-Safe Pattern Matching**: Sealed class `MediaEntity` with `ImageMedia`, `VideoMedia`, and `DocumentMedia` variants
- **Path-Based Storage**: All entities use file paths (no Uint8List) for memory efficiency

#### Media Sources
- **Camera**: Capture images and videos with metadata support (documents not supported)
- **Gallery**: Select images and videos from device gallery (documents not supported)
- **Files**: Pick images, videos, and documents from device storage (all types supported, web compatible)

#### Camera Features
- **Four Metadata Strategies**:
  - `selectable`: User selects from overlay labels before each capture
  - `sequential`: Auto-assign metadata in sequence order (no overlay)
  - `shared`: Same metadata for all captures (no overlay)
  - `hybrid`: Sequential for first N, then fallback for remaining
- **Video Capture**: Support for video recording with duration limits and quality settings
- **Photo & Video Mode**: Switch between photo and video modes or enable both
- **Camera Roll**: Built-in preview and management of captured media
- **Customizable UI**: Configure colors, text styles, and overlay appearance

#### Configuration
- **MediaSelectionOptions**: Flexible configuration with:
  - Per-type limits (`maxImages`, `maxVideos`, `maxDocuments`)
  - Overall limit (`maxTotal`)
  - File type filters (by extension)
  - Compression settings (images only)
  - Camera configuration
- **Convenience Factories**: `.imagesOnly()`, `.videosOnly()`, `.documentsOnly()`

#### Smart Compression
- **Automatic Image Compression**: Configurable quality, dimensions, and format
- **Path-Based Pipeline**: Compress from path to path (no memory loading)
- **Web Compatible**: Works seamlessly on web platform

#### Type Safety
- **Sealed Class MediaEntity**: Exhaustive pattern matching with compiler checks
- **Either Pattern**: Type-safe error handling with `Either<MediaFailure, List<MediaEntity>>`
- **Freezed Models**: Immutable entities with automatic copyWith, equality, and pattern matching
- **Compile-Time Safety**: No runtime type casting needed

#### Permission Handling
- **Built-In Management**: Automatic permission requests and status tracking
- **Typed Failures**: Permission denial returns `PermissionDenied` failure
- **Platform-Specific**: Handles iOS, Android, and web permission differences

### 🏗️ Architecture

- **Clean Architecture**: Clear separation of Domain, Data, and Presentation layers
- **Dependency Injection**: Riverpod providers for loose coupling (internal only)
- **Repository Pattern**: Abstract interfaces with concrete implementations
- **Use Case Pattern**: Domain logic encapsulated in use cases
- **Framework Agnostic**: No Riverpod knowledge required for users

### 📦 Public API

Users interact with:
1. `MediaPicker` - Static facade with 3 methods
2. `MediaEntity` - Sealed class (ImageMedia/VideoMedia/DocumentMedia)
3. `MediaMetadataEntity` - Unified metadata for all types
4. `MediaSelectionOptions` - Configuration class
5. `CameraConfig` - Camera-specific configuration
6. `CameraMetadataStrategy` - Sealed class for metadata strategies
7. `Either<MediaFailure, T>` - Error handling pattern

### 🔐 Validation

- **Media Scope Validation**: Camera and Gallery reject document requests with typed failures
- **Type Filters**: Validate file extensions against allowed types
- **Quantity Limits**: Enforce maxImages, maxVideos, maxDocuments constraints

### 🌐 Platform Support

- ✅ iOS - Full camera, gallery, and file support
- ✅ Android - Full camera, gallery, and file support
- ✅ Web - File picker only (no camera/gallery)
- ✅ macOS - File picker only
- ✅ Windows - File picker only
- ✅ Linux - File picker only

### 📚 Documentation

- Comprehensive README with:
  - Quick start guide
  - Media type examples
  - Camera metadata strategy examples
  - Configuration options
  - Error handling patterns
  - Advanced usage examples
  - Architecture overview
- Inline documentation for all public APIs
- Type-safe code examples

### 🧪 Testing

- Unit tests for all use cases
- Repository implementation tests
- Data source tests
- Mock-based testing with Mockito
- Provider override testing patterns

### 🛠️ Dependencies

- `flutter_riverpod: - Internal state management
- `riverpod_annotation: - Provider code generation
- `freezed_annotation: - Immutable models
- `dartz: - Functional programming (Either pattern)
- `camerawesome: - Camera functionality
- `image_picker: - Gallery picker
- `file_picker: - File picker
- `flutter_image_compress: - Image compression
- `permission_handler: - Permission management
- `uuid: - Unique ID generation

### 📋 Requirements

- Flutter SDK: >=3.0.0
- Dart SDK: >=3.0.0

### 🎯 Design Decisions

#### Why Sealed Classes?
- Exhaustive pattern matching ensures all media types are handled
- Compile-time safety prevents missing case statements
- Dart 3 feature for modern type-safe code

#### Why Path-Based Storage?
- Memory efficient for large media files
- Consistent across all media types
- Web compatible via temporary files
- No need to load entire files into memory

#### Why Unified API?
- Simpler API surface (3 methods instead of 5+)
- Consistent return types across all operations
- Easier to learn and use
- Better type safety with sealed classes

#### Why Strategy Pattern for Camera Metadata?
- Four distinct use cases with no overlap
- Type-safe selection via sealed class
- No boolean flags or validation needed
- Each strategy is self-contained

#### Why Internal Riverpod?
- Framework-agnostic public API
- Users don't need Riverpod knowledge
- CameraView creates internal ProviderScope
- Clean separation of concerns

### 🙏 Credits

Built with:
- [Riverpod](https://riverpod.dev) for internal state management
- [Freezed](https://pub.dev/packages/freezed) for immutable models
- [CamerAwesome](https://pub.dev/packages/camerawesome) for camera functionality
- [Dartz](https://pub.dev/packages/dartz) for Either pattern
- [Image Picker](https://pub.dev/packages/image_picker) for gallery selection
- [File Picker](https://pub.dev/packages/file_picker) for file selection
- [Flutter Image Compress](https://pub.dev/packages/flutter_image_compress) for compression

---

## Future Releases

### Planned Features
- [ ] Video thumbnail generation
- [ ] Metadata overlay customization
- [ ] Custom camera controls
- [ ] Batch compression
- [ ] Cloud storage integration
- [ ] Advanced video editing

---

**Note**: This is the first official release. No migration guide needed as there were no previous public versions.
