# Media Picker

A comprehensive, framework-agnostic Flutter package for unified media management supporting images, videos, and documents. Three simple methods for all your media needs

## Features

- **🎯 Unified API**: Three methods for all media operations (`getMediasFromCamera`, `getMediasFromGallery`, `getMediasFromFiles`)
- **📦 Mixed Media Selection**: Pick images, videos, and documents in a single call
- **🔒 Type-Safe**: Sealed class pattern matching with exhaustive checking
- **📸 Full Camera Support**: Image and video capture with metadata strategies
- **🖼️ Gallery Integration**: Multi-select images and videos from device gallery
- **📁 Document Support**: PDFs, DOCX, and other documents via file picker
- **🗜️ Smart Compression**: Automatic image compression with configurable options
- **🏷️ Flexible Metadata**: Four metadata strategies (selectable, sequential, shared, hybrid)
- **🎨 Customizable UI**: Configurable camera view with overlay support
- **🌐 Web Compatible**: Full web support with file picker
- **🔐 Permission Handling**: Built-in permission management
- **✅ Clean Architecture**: Internal state management
- **🧪 Well Tested**: Comprehensive test coverage

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  media_picker:
    git:
      url: https://github.com/yourrepo/media_picker.git
      ref: v1.0.0
```

## Quick Start

No setup required! Works out of the box.

### 1. Get media from gallery (images + videos)

```dart
import 'package:media_picker/media_picker.dart';

final result = await MediaPicker.getMediasFromGallery(
  options: MediaSelectionOptions(
    maxImages: 5,
    maxVideos: 3,
    compressionOptions: CompressionOptions(quality: 90),
  ),
);

result.fold(
  (failure) => print('Error: $failure'),
  (medias) {
    // Type-safe pattern matching
    for (final media in medias) {
      switch (media) {
        case ImageMedia(:final path, :final width, :final height):
          print('Image: $path ($width x $height)');
        case VideoMedia(:final path, :final durationMs):
          print('Video: $path, ${durationMs}ms');
        case DocumentMedia(:final path):
          print('Document: $path'); // Won't happen from gallery
      }
    }

    // Or filter by type
    final images = medias.whereType<ImageMedia>().toList();
    final videos = medias.whereType<VideoMedia>().toList();
  },
);
```

### 2. Capture from camera with metadata

```dart
// Simple camera with default settings
final result = await MediaPicker.getMediasFromCamera(
  context,
  options: MediaSelectionOptions(
    maxImages: 10,
    cameraConfig: CameraConfig.standard(),
  ),
);

// Inspection mode - user selects from labels
final result = await MediaPicker.getMediasFromCamera(
  context,
  options: MediaSelectionOptions(
    maxImages: 5,
    cameraConfig: CameraConfig.inspection(
      labels: ['Front View', 'Back View', 'Side View', 'Interior'],
    ),
  ),
);

// Shared metadata for all captures
final result = await MediaPicker.getMediasFromCamera(
  context,
  options: MediaSelectionOptions(
    maxImages: 20,
    cameraConfig: CameraConfig.withSharedMetadata(
      metadata: MediaMetadataEntity(
        title: 'Accident Report #123',
        description: 'Highway 101 incident',
      ),
    ),
  ),
);

// Sequential metadata (auto-assigned in order)
final result = await MediaPicker.getMediasFromCamera(
  context,
  options: MediaSelectionOptions(
    maxImages: 3,
    cameraConfig: CameraConfig(
      metadataStrategy: CameraMetadataStrategy.sequential(
        sequence: [
          MediaMetadataEntity(title: 'Front View'),
          MediaMetadataEntity(title: 'Back View'),
          MediaMetadataEntity(title: 'Side View'),
        ],
      ),
    ),
  ),
);

// Hybrid: Sequential + fallback for extras
final result = await MediaPicker.getMediasFromCamera(
  context,
  options: MediaSelectionOptions(
    maxImages: 10,
    cameraConfig: CameraConfig.sequentialWithFallback(
      sequence: [
        MediaMetadataEntity(title: 'Front'),
        MediaMetadataEntity(title: 'Back'),
        MediaMetadataEntity(title: 'Side'),
      ],
      fallback: MediaMetadataEntity(title: 'Additional Damage'),
    ),
  ),
);
```

### 3. Get files (including documents)

```dart
// Only documents
final result = await MediaPicker.getMediasFromFiles(
  options: MediaSelectionOptions.documentsOnly(
    maxDocuments: 10,
  ),
);

// Mixed: images, videos, and documents
final result = await MediaPicker.getMediasFromFiles(
  options: MediaSelectionOptions(
    maxImages: 5,
    maxVideos: 2,
    maxDocuments: 10,
    allowedDocumentTypes: ['pdf', 'docx', 'txt'],
  ),
);

result.fold(
  (failure) => print('Error: $failure'),
  (medias) {
    final documents = medias.whereType<DocumentMedia>();
    for (final doc in documents) {
      print('Document: ${doc.fileName}, ${doc.pageCount} pages');
    }
  },
);
```

## Media Types

All media operations return a `List<MediaEntity>` - a sealed class with three variants:

```dart
sealed class MediaEntity {
  // Image variant
  factory MediaEntity.image({
    required String id,
    required String path,
    required String extension,
    String? fileName,
    int? width,
    int? height,
    int? fileSizeBytes,
    MediaMetadataEntity? metadata,
  });

  // Video variant
  factory MediaEntity.video({
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
    MediaMetadataEntity? metadata,
  });

  // Document variant
  factory MediaEntity.document({
    required String id,
    required String path,
    required String extension,
    String? fileName,
    int? pageCount,
    int? fileSizeBytes,
    String? mimeType,
    MediaMetadataEntity? metadata,
  });
}
```

Use pattern matching for type-safe access:

```dart
switch (media) {
  case ImageMedia(:final path):
    Image.file(File(path));
  case VideoMedia(:final path, :final durationMs):
    VideoPlayer.file(File(path));
  case DocumentMedia(:final path):
    openDocument(path);
}
```

## Camera Metadata Strategies

The camera supports four metadata strategies:

### 1. Selectable (User picks from overlay)

```dart
CameraConfig.inspection(
  labels: ['Front', 'Back', 'Side'],
)
```
- Shows overlay with selectable options
- User taps a label before each capture
- Labels auto-converted to MediaMetadataEntity

### 2. Sequential (Auto-assigned in order)

```dart
CameraMetadataStrategy.sequential(
  sequence: [
    MediaMetadataEntity(title: 'Front View'),
    MediaMetadataEntity(title: 'Back View'),
    MediaMetadataEntity(title: 'Side View'),
  ],
)
```
- No overlay shown
- Photo 1 gets sequence[0], Photo 2 gets sequence[1], etc.
- Full control over metadata

### 3. Shared (Same metadata for all)

```dart
CameraConfig.withSharedMetadata(
  metadata: MediaMetadataEntity(
    title: 'Traffic Accident #123',
    description: 'Highway 101',
  ),
)
```
- No overlay shown
- All captures get identical metadata
- Good for event documentation

### 4. Hybrid (Sequential + Fallback)

```dart
CameraConfig.sequentialWithFallback(
  sequence: [
    MediaMetadataEntity(title: 'Front'),
    MediaMetadataEntity(title: 'Back'),
  ],
  fallback: MediaMetadataEntity(title: 'Additional'),
)
```
- First N photos use sequential metadata
- Remaining photos all get fallback metadata
- No overlay - fully automatic

## Configuration Options

### MediaSelectionOptions

```dart
MediaSelectionOptions(
  // Quantity limits
  maxImages: 50,              // null = unlimited
  maxVideos: 10,              // null = unlimited
  maxDocuments: 10,           // null = unlimited
  maxTotal: 20,               // Override individual limits

  // File type filters
  allowedImageTypes: ['jpg', 'png', 'heic', 'webp'],
  allowedVideoTypes: ['mp4', 'mov', 'avi'],
  allowedDocumentTypes: ['pdf', 'doc', 'docx', 'txt'],

  // Compression (images only)
  compressionOptions: CompressionOptions(
    quality: 90,
    minWidth: 1920,
    minHeight: 1080,
  ),

  // Camera configuration
  cameraConfig: CameraConfig(...),
)

// Convenience factories
MediaSelectionOptions.imagesOnly(maxImages: 10);
MediaSelectionOptions.videosOnly(maxVideos: 5);
MediaSelectionOptions.documentsOnly(maxDocuments: 10);
```

### CameraConfig

```dart
CameraConfig(
  // Metadata strategy (optional)
  metadataStrategy: CameraMetadataStrategy.selectable(...),

  // Initial mode
  initialMode: CaptureMode.photo, // or .video, .both

  // Video settings
  maxVideoDuration: Duration(seconds: 30),
  videoQuality: VideoQuality.high,

  // UI customization
  ui: CameraUI(
    cardColor: Colors.blue,
    textColor: Colors.white,
    showModeToggle: true,
  ),
)

// Preset factories
CameraConfig.standard();
CameraConfig.inspection(labels: ['Front', 'Back']);
CameraConfig.withSharedMetadata(metadata: ...);
CameraConfig.sequentialWithFallback(sequence: ..., fallback: ...);
```

## Media Scope Validation

| Source   | Images | Videos | Documents |
|----------|--------|--------|-----------|
| Camera   | ✅     | ✅     | ❌        |
| Gallery  | ✅     | ✅     | ❌        |
| Files    | ✅     | ✅     | ✅        |

The package validates media type requests:

```dart
// ❌ This will return an error
await MediaPicker.getMediasFromCamera(
  context,
  options: MediaSelectionOptions(maxDocuments: 10),
);
// Error: Camera does not support document capture

// ✅ This is correct
await MediaPicker.getMediasFromFiles(
  options: MediaSelectionOptions(maxDocuments: 10),
);
```

## Error Handling

All methods return `Either<MediaFailure, List<MediaEntity>>`:

```dart
result.fold(
  (failure) {
    switch (failure) {
      case PermissionDenied():
        print('Permission denied');
      case CameraError(:final message):
        print('Camera error: $message');
      case CompressionError(:final message):
        print('Compression failed: $message');
      case MediaFailure():
        print('Unknown error');
    }
  },
  (medias) {
    print('Success: ${medias.length} items');
  },
);
```

## Display Images

All entities use path-based storage (no Uint8List):

```dart
// Display image
Image.file(File(imageMedia.path))

// Display video thumbnail
if (videoMedia.thumbnailPath != null) {
  Image.file(File(videoMedia.thumbnailPath!))
}

// Open document
await OpenFile.open(documentMedia.path);
```

## Advanced Usage

### Custom Metadata Builder

```dart
CameraMetadataStrategy.selectable(
  labels: ['Damage', 'Repair', 'Complete'],
  metadataBuilder: (label, index) => MediaMetadataEntity(
    title: label,
    description: 'Photo ${index + 1} taken at ${DateTime.now()}',
  ),
)
```

### Access Metadata

```dart
for (final media in medias) {
  if (media is ImageMedia && media.metadata != null) {
    print('Title: ${media.metadata!.title}');
    print('Description: ${media.metadata!.description}');
  }
}
```

### Filter and Sort

```dart
// Get only images with metadata
final taggedImages = medias
    .whereType<ImageMedia>()
    .where((img) => img.metadata != null)
    .toList();

// Sort by file size
medias.sort((a, b) {
  final aSize = switch (a) {
    ImageMedia(:final fileSizeBytes) => fileSizeBytes ?? 0,
    VideoMedia(:final fileSizeBytes) => fileSizeBytes ?? 0,
    DocumentMedia(:final fileSizeBytes) => fileSizeBytes ?? 0,
  };
  final bSize = switch (b) {
    ImageMedia(:final fileSizeBytes) => fileSizeBytes ?? 0,
    VideoMedia(:final fileSizeBytes) => fileSizeBytes ?? 0,
    DocumentMedia(:final fileSizeBytes) => fileSizeBytes ?? 0,
  };
  return aSize.compareTo(bSize);
});
```

## Architecture

Built following Clean Architecture:

```
├── Core API (Public)
│   └── MediaPicker (Static facade - main entry point)
│       ├── getMediasFromCamera(context, options)
│       ├── getMediasFromGallery(options)
│       └── getMediasFromFiles(options)
│
├── Domain Layer (Public interfaces)
│   ├── Entities
│   │   ├── MediaEntity (sealed: Image/Video/Document)
│   │   └── MediaMetadataEntity
│   ├── Use Cases
│   │   ├── GetMediasFromCameraUsecase
│   │   ├── GetMediasFromGalleryUsecase
│   │   └── GetMediasFromFilesUsecase
│   └── Repository Interfaces
│
├── Data Layer (Internal)
│   ├── Repository Implementations
│   ├── DataSources (Camera, Gallery, FilePicker, Compression)
│   └── DTOs & Mappers
│
└── Presentation Layer (Internal)
    ├── CameraView
    └── Widgets
```

Users only interact with:
1. `MediaPicker` static methods
2. `MediaEntity` sealed class variants
3. `MediaSelectionOptions` and `CameraConfig`
4. `Either` pattern for error handling

No Riverpod knowledge required!

## Platform Support

- ✅ iOS
- ✅ Android
- ✅ Web (file picker only, no camera)
- ✅ macOS (file picker only)
- ✅ Windows (file picker only)
- ✅ Linux (file picker only)

## Platform Configuration

### iOS Configuration

Add the following to your `ios/Runner/Info.plist`:

```xml
<!-- Camera permissions -->
<key>NSCameraUsageDescription</key>
<string>This app needs camera access to take photos and videos</string>

<key>NSMicrophoneUsageDescription</key>
<string>This app needs microphone access to record videos</string>

<!-- Gallery/Photo Library permissions -->
<key>NSPhotoLibraryUsageDescription</key>
<string>This app needs photo library access to select media</string>

<key>NSPhotoLibraryAddUsageDescription</key>
<string>This app needs permission to save photos to your library</string>

<!-- iOS 14+: Prevent automatic "Limited Access" alert (optional) -->
<key>PHPhotoLibraryPreventAutomaticLimitedAccessAlert</key>
<true/>

<!-- File picker support -->
<key>UISupportsDocumentBrowser</key>
<true/>

<key>LSSupportsOpeningDocumentsInPlace</key>
<true/>

<!-- Orientation support for iPhone -->
<key>UISupportedInterfaceOrientations</key>
<array>
    <string>UIInterfaceOrientationPortrait</string>
    <string>UIInterfaceOrientationLandscapeLeft</string>
    <string>UIInterfaceOrientationLandscapeRight</string>
</array>

<!-- Orientation support for iPad (required for tablet camera) -->
<key>UISupportedInterfaceOrientations~ipad</key>
<array>
    <string>UIInterfaceOrientationPortrait</string>
    <string>UIInterfaceOrientationPortraitUpsideDown</string>
    <string>UIInterfaceOrientationLandscapeLeft</string>
    <string>UIInterfaceOrientationLandscapeRight</string>
</array>
```

**iOS Podfile Configuration** (for permission_handler):

Add to your `ios/Podfile`:

```ruby
post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
    target.build_configurations.each do |config|
      config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [
        '$(inherited)',
        'PERMISSION_CAMERA=1',
        'PERMISSION_PHOTOS=1',
        'PERMISSION_MEDIA_LIBRARY=1',
      ]
    end
  end
end
```

> **iOS 14+ Note**: Users can grant "Limited Photo Access" which allows selecting only specific photos. The package handles this gracefully - both full and limited access are accepted.

### Android Configuration

Add the following to your `android/app/src/main/AndroidManifest.xml`:

```xml
<!-- Camera permissions -->
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.RECORD_AUDIO" />

<!-- Gallery/Storage permissions - Android 13+ (API 33) -->
<uses-permission android:name="android.permission.READ_MEDIA_IMAGES" />
<uses-permission android:name="android.permission.READ_MEDIA_VIDEO" />
<uses-permission android:name="android.permission.READ_MEDIA_AUDIO" />

<!-- Legacy storage - Android 12 and below only -->
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"
    android:maxSdkVersion="32" />

<!-- Optional: Access media location (EXIF data) -->
<uses-permission android:name="android.permission.ACCESS_MEDIA_LOCATION" />

<!-- Camera feature -->
<uses-feature android:name="android.hardware.camera" android:required="false" />
<uses-feature android:name="android.hardware.camera.autofocus" android:required="false" />
```

For tablet/landscape support, update your `MainActivity`:

```xml
<activity
    android:name=".MainActivity"
    android:screenOrientation="sensor"
    android:configChanges="orientation|screenSize|keyboardHidden">
    <!-- ... -->
</activity>
```

> **Android Storage Notes**:
> - `WRITE_EXTERNAL_STORAGE` is **no longer needed** on Android 11+ (API 30) - it has no effect
> - Use `maxSdkVersion="32"` for `READ_EXTERNAL_STORAGE` to only request on Android 12 and below
> - Android 13+ uses granular media permissions (`READ_MEDIA_*`) instead of storage permissions
> - On Android 16+ (API 36) devices with screen width >= 600dp, orientation locking may not work. The camera view adapts automatically

## Requirements

- Flutter SDK: >=3.0.0
- Dart SDK: >=3.0.0

## License

MIT License - see LICENSE file for details

## Contributing

Contributions are welcome! Please read CONTRIBUTING.md for guidelines.

## Support

- GitHub Issues: [Report bugs](https://github.com/yourrepo/media_picker/issues)
- Documentation: [Full API docs](https://pub.dev/documentation/media_picker/latest/)
