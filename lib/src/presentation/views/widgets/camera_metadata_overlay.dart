import 'package:flutter/material.dart';

import '../../../domain/entities/image_entity.dart';

/// Overlay for selecting image metadata while capturing
///
/// Displays a horizontal list of metadata options that can be selected
class CameraMetadataOverlay extends StatelessWidget {
  final List<ImageMetadataEntity> metadataList;
  final ImageMetadataEntity? currentMetadata;
  final ValueChanged<ImageMetadataEntity?> onMetadataSelected;

  const CameraMetadataOverlay({
    super.key,
    required this.metadataList,
    required this.currentMetadata,
    required this.onMetadataSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SafeArea(
        child: Container(
          height: 120,
          color: Colors.black45,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: metadataList.length,
            itemBuilder: (context, index) {
              final metadata = metadataList[index];
              final isSelected = currentMetadata == metadata;

              return _MetadataCard(
                metadata: metadata,
                isSelected: isSelected,
                onTap: () => onMetadataSelected(
                  isSelected ? null : metadata,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _MetadataCard extends StatelessWidget {
  final ImageMetadataEntity metadata;
  final bool isSelected;
  final VoidCallback onTap;

  const _MetadataCard({
    required this.metadata,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? Colors.blueAccent : Colors.grey.shade300,
            width: 2,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.blue.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ]
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (metadata.title != null) ...[
              Text(
                metadata.title!,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
            ],
            if (metadata.description != null)
              Expanded(
                child: Text(
                  metadata.description!,
                  style: TextStyle(
                    color: isSelected ? Colors.white70 : Colors.black54,
                    fontSize: 12,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
