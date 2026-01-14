import 'package:flutter/material.dart';

import '../../../domain/entities/image_entity.dart';

/// Optional overlay widget for camera preview
///
/// Can be used to display custom UI elements over the camera preview
class CameraOverlayWidget extends StatelessWidget {
  final ImageMetadataEntity? metadata;
  final VoidCallback? onTap;

  const CameraOverlayWidget({
    super.key,
    this.metadata,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (metadata == null) {
      return const SizedBox.shrink();
    }

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (metadata!.title != null) ...[
                Text(
                  metadata!.title!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
              ],
              if (metadata!.description != null)
                Text(
                  metadata!.description!,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
