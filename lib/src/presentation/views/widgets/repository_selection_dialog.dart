import 'package:flutter/material.dart';

import '../../../domain/enums/image_source.dart';

/// Dialog for selecting image source
///
/// Allows user to choose between camera, gallery, or file picker
class RepositorySelectionDialog extends StatelessWidget {
  final bool showFileOption;
  final bool showGalleryOption;
  final bool showCameraOption;

  const RepositorySelectionDialog({
    super.key,
    this.showFileOption = true,
    this.showGalleryOption = true,
    this.showCameraOption = true,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Select Image Source',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),

            // Camera option
            if (showCameraOption)
              _SourceOption(
                icon: Icons.camera_alt,
                title: 'Camera',
                description: 'Take photos with camera',
                color: Colors.blue,
                onTap: () => Navigator.pop(context, ImageSource.camera),
              ),

            if (showCameraOption && (showGalleryOption || showFileOption))
              const SizedBox(height: 16),

            // Gallery option
            if (showGalleryOption)
              _SourceOption(
                icon: Icons.photo_library,
                title: 'Gallery',
                description: 'Select from photo gallery',
                color: Colors.purple,
                onTap: () => Navigator.pop(context, ImageSource.gallery),
              ),

            if (showGalleryOption && showFileOption)
              const SizedBox(height: 16),

            // File picker option
            if (showFileOption)
              _SourceOption(
                icon: Icons.folder,
                title: 'Files',
                description: 'Choose files from device',
                color: Colors.orange,
                onTap: () => Navigator.pop(context, ImageSource.files),
              ),

            const SizedBox(height: 16),

            // Cancel button
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }

  /// Show the dialog and return selected source
  static Future<ImageSource?> show(
    BuildContext context, {
    bool showFileOption = true,
    bool showGalleryOption = true,
    bool showCameraOption = true,
  }) {
    return showDialog<ImageSource>(
      context: context,
      builder: (context) => RepositorySelectionDialog(
        showFileOption: showFileOption,
        showGalleryOption: showGalleryOption,
        showCameraOption: showCameraOption,
      ),
    );
  }
}

class _SourceOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;
  final VoidCallback onTap;

  const _SourceOption({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: color,
                size: 32,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
