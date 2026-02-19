import 'dart:io';

import 'package:flutter/material.dart';
import 'package:media_picker/media_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Picker Example',
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MediaEntity> _pickedMedia = [];

  String _statusMessage = 'Pick media using the buttons below';

  bool _isVehicleInspection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Picker Example'),
        actions: [
          if (_pickedMedia.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep),
              onPressed: () => setState(() {
                _pickedMedia.clear();
                _statusMessage = 'Cleared all media';
              }),
            ),
        ],
      ),
      body: Column(
        children: [
          // Status
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              _statusMessage,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),

          // Options
          SwitchListTile(
            title: const Text('Vehicle Inspection Mode'),
            subtitle: const Text('Enables sequential camera metadata'),
            value: _isVehicleInspection,
            onChanged: (value) => setState(() => _isVehicleInspection = value),
          ),

          // Action buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // Camera button
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: const Icon(Icons.camera_alt),
                    label: Text(
                      _isVehicleInspection
                          ? 'Start Vehicle Inspection'
                          : 'Open Camera',
                    ),
                    onPressed: () => _pickMedia(MediaSource.camera),
                  ),
                ),
                const SizedBox(height: 8),

                // Gallery and Files
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.photo_library),
                        label: const Text('Gallery'),
                        onPressed: () => _pickMedia(MediaSource.gallery),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.folder_open),
                        label: const Text('Files'),
                        onPressed: () => _pickMedia(MediaSource.files),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const Divider(height: 32),

          // Results
          Expanded(
            child: _pickedMedia.isEmpty
                ? const Center(
                    child: Text(
                      'No media picked yet',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _pickedMedia.length,
                    itemBuilder: (context, index) {
                      return _MediaCard(media: _pickedMedia[index]);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Future<void> _pickMedia(MediaSource source) async {
    setState(() => _statusMessage = 'Processing ${source.name}...');

    final result = await switch (source) {
      MediaSource.camera => MediaPicker.getMediasFromCamera(
        context,
        options: MediaSelectionOptions(
          maxImages: _isVehicleInspection ? 4 : 10,
          maxVideos: 5,
          maxDocuments: 0,
          compressionOptions: const CompressionOptions(quality: 85),
          cameraConfig: _isVehicleInspection
              ? const CameraConfig(
                  metadataStrategy: CameraMetadataStrategy.sequential(
                    sequence: [
                      MediaMetadataEntity(
                        title: 'Front View',
                        description: 'Capture the front of the vehicle',
                      ),
                      MediaMetadataEntity(
                        title: 'Rear View',
                        description: 'Capture the rear of the vehicle',
                      ),
                      MediaMetadataEntity(
                        title: 'Right Side',
                        description: 'Capture the right side of the vehicle',
                      ),
                      MediaMetadataEntity(
                        title: 'Left Side',
                        description: 'Capture the left side of the vehicle',
                      ),
                    ],
                  ),
                )
              : null,
        ),
      ),
      MediaSource.gallery => MediaPicker.getMediasFromGallery(
        options: const MediaSelectionOptions(
          maxImages: 10,
          maxVideos: 5,
          maxDocuments: 0,
          compressionOptions: CompressionOptions(quality: 85),
        ),
      ),
      MediaSource.files => MediaPicker.getMediasFromFiles(
        options: const MediaSelectionOptions(maxImages: 10, maxVideos: 5),
      ),
    };

    result.fold(
      (failure) => setState(() {
        _statusMessage =
            '${source.name.toUpperCase()} Error: ${_failureToString(failure)}';
      }),
      (medias) => setState(() {
        _pickedMedia.addAll(medias);
        _statusMessage = 'Added ${medias.length} items from ${source.name}';
      }),
    );
  }

  String _failureToString(MediaFailure failure) {
    return failure.when(
      permissionDenied: () => 'Permission denied',
      cameraError: (msg) => 'Camera error: $msg',
      galleryError: (msg) => 'Gallery error: $msg',
      filePickerError: (msg) => 'File picker error: $msg',
      compressionFailed: (msg) => 'Compression failed: $msg',
      noCameraAvailable: () => 'No camera available',
      videoRecordingFailed: (msg) => 'Video recording failed: $msg',
      unknown: (msg) => 'Unknown: $msg',
      cancelled: () => 'Cancelled',
    );
  }
}

class _MediaCard extends StatelessWidget {
  final MediaEntity media;

  const _MediaCard({required this.media});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      child: switch (media) {
        ImageMedia(:final path, :final fileName, :final metadata) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.file(
                File(path),
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => const _ErrorPlaceholder(),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.image, color: Colors.blue),
              title: Text(fileName ?? 'Image'),
              subtitle: Text(metadata?.title ?? media.extension.toUpperCase()),
            ),
          ],
        ),
        VideoMedia(:final path, :final fileName, :final durationMs) => ListTile(
          leading: const Icon(Icons.videocam, color: Colors.red),
          title: Text(fileName ?? 'Video'),
          subtitle: Text(
            durationMs != null
                ? '${(durationMs / 1000).toStringAsFixed(1)}s'
                : path.split('.').last.toUpperCase(),
          ),
        ),
        DocumentMedia(:final fileName, :final extension) => ListTile(
          leading: const Icon(Icons.description, color: Colors.orange),
          title: Text(fileName ?? 'Document'),
          subtitle: Text(extension.toUpperCase()),
        ),
      },
    );
  }
}

class _ErrorPlaceholder extends StatelessWidget {
  const _ErrorPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: const Center(
        child: Icon(Icons.broken_image, size: 48, color: Colors.grey),
      ),
    );
  }
}

enum MediaSource { camera, gallery, files }
