import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/media_metadata_entity.dart';

part 'camera_metadata_strategy.freezed.dart';

/// Sealed class representing different metadata strategies for camera
@freezed
sealed class CameraMetadataStrategy with _$CameraMetadataStrategy {
  /// User selects from predefined labels (overlay shown)
  /// Convenience: Just provide labels as strings, entity auto-created
  const factory CameraMetadataStrategy.selectable({
    required List<String> labels,
    MediaMetadataEntity Function(String label, int index)? metadataBuilder,
  }) = SelectableMetadataStrategy;

  /// Predefined sequential metadata (no selection, auto-assigned)
  /// First N photos get sequential metadata from list
  const factory CameraMetadataStrategy.sequential({
    required List<MediaMetadataEntity> sequence,
  }) = SequentialMetadataStrategy;

  /// Shared metadata for ALL captures
  /// No overlay, same metadata for everything
  const factory CameraMetadataStrategy.shared({
    required MediaMetadataEntity metadata,
  }) = SharedMetadataStrategy;

  /// Hybrid: Sequential + fallback
  /// First N use sequence, rest use fallback
  const factory CameraMetadataStrategy.hybrid({
    required List<MediaMetadataEntity> sequence,
    required MediaMetadataEntity fallback,
  }) = HybridMetadataStrategy;
}
