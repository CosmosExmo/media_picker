import 'dart:io';

import 'package:flutter/material.dart';

import '../../../domain/entities/media_entity.dart';

/// Bottom sheet widget displaying captured images and videos
///
/// Shows a grid of captured media with preview and delete functionality
class CameraRollWidget extends StatelessWidget {
  final List<ImageMedia> images;
  final List<VideoMedia> videos;
  final ValueChanged<int> onRemoveImage;
  final ValueChanged<int> onRemoveVideo;
  final VoidCallback onClose;

  const CameraRollWidget({
    super.key,
    required this.images,
    this.videos = const [],
    required this.onRemoveImage,
    required this.onRemoveVideo,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    final totalMedia = images.length + videos.length;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Captured Media ($totalMedia)',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: onClose,
                  ),
                ],
              ),
            ),

            // Grid of media (images and videos)
            Expanded(
              child: totalMedia == 0
                  ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.photo_library_outlined,
                            size: 64,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'No media captured yet',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemCount: totalMedia,
                      itemBuilder: (context, index) {
                        // Show images first, then videos
                        if (index < images.length) {
                          return _ImageCard(
                            image: images[index],
                            onRemove: () => onRemoveImage(index),
                            onTap: () => _showImagePreview(context, images[index]),
                          );
                        } else {
                          final videoIndex = index - images.length;
                          return _VideoCard(
                            video: videos[videoIndex],
                            onRemove: () => onRemoveVideo(videoIndex),
                            onTap: () => _showVideoPreview(context, videos[videoIndex]),
                          );
                        }
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImagePreview(BuildContext context, ImageMedia image) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image preview
            Flexible(
              child: InteractiveViewer(
                child: Image.file(
                  File(image.path),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Metadata (if any)
            if (image.metadata != null)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.black87,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (image.metadata!.title != null)
                      Text(
                        image.metadata!.title!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    if (image.metadata!.description != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        image.metadata!.description!,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ],
                ),
              ),

            // Close button
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showVideoPreview(BuildContext context, VideoMedia video) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Video placeholder (actual video player would go here)
            Container(
              height: 300,
              color: Colors.black,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      size: 64,
                      color: Colors.white,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Video Preview',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            // Video metadata (if any)
            if (video.metadata != null)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.black87,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (video.metadata!.title != null)
                      Text(
                        video.metadata!.title!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    if (video.metadata!.description != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        video.metadata!.description!,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ],
                ),
              ),

            // Close button
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final ImageMedia image;
  final VoidCallback onRemove;
  final VoidCallback onTap;

  const _ImageCard({
    required this.image,
    required this.onRemove,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.file(
              File(image.path),
              fit: BoxFit.cover,
            ),
          ),

          // Delete button
          Positioned(
            top: 4,
            right: 4,
            child: GestureDetector(
              onTap: onRemove,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),

          // Metadata indicator
          if (image.metadata != null)
            Positioned(
              bottom: 4,
              left: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 12,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _VideoCard extends StatelessWidget {
  final VideoMedia video;
  final VoidCallback onRemove;
  final VoidCallback onTap;

  const _VideoCard({
    required this.video,
    required this.onRemove,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Video thumbnail (or placeholder)
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: video.thumbnailPath != null
                ? Image.file(
                    File(video.thumbnailPath!),
                    fit: BoxFit.cover,
                  )
                : Container(
                    color: Colors.grey.shade800,
                    child: const Center(
                      child: Icon(
                        Icons.videocam,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
          ),

          // Video play indicator
          const Center(
            child: Icon(
              Icons.play_circle_outline,
              color: Colors.white,
              size: 40,
            ),
          ),

          // Delete button
          Positioned(
            top: 4,
            right: 4,
            child: GestureDetector(
              onTap: onRemove,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),

          // Duration indicator (if available)
          if (video.durationMs != null)
            Positioned(
              bottom: 4,
              right: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  _formatDuration(video.durationMs! ~/ 1000),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          // Metadata indicator
          if (video.metadata != null)
            Positioned(
              bottom: 4,
              left: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.info_outline,
                  color: Colors.white,
                  size: 12,
                ),
              ),
            ),
        ],
      ),
    );
  }

  String _formatDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
}
