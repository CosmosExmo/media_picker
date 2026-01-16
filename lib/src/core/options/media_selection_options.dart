import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/entities/media_metadata_entity.dart';
import 'camera_metadata_strategy.dart';
import 'compression_options.dart';

/// Configuration for media selection operations
class MediaSelectionOptions {
  /// Quantity limits (null = unlimited)
  final int? maxImages;
  final int? maxVideos;
  final int? maxDocuments;
  final int? maxTotal; // Override individual limits

  /// File type filters
  final List<String> allowedImageTypes;
  final List<String> allowedVideoTypes;
  final List<String> allowedDocumentTypes;

  /// Compression (images only)
  final CompressionOptions? compressionOptions;

  /// Orientations to restore when camera is closed
  final List<DeviceOrientation>? themeOrientations;

  /// Camera configuration
  final CameraConfig? cameraConfig;

  const MediaSelectionOptions({
    this.maxImages = 50,
    this.maxVideos = 10,
    this.maxDocuments = 10,
    this.maxTotal,
    this.allowedImageTypes = const ['jpg', 'jpeg', 'png', 'heic', 'webp'],
    this.allowedVideoTypes = const ['mp4', 'mov', 'avi', 'mkv'],
    this.allowedDocumentTypes = const ['pdf', 'doc', 'docx', 'txt'],
    this.compressionOptions,
    this.themeOrientations,
    this.cameraConfig,
  });

  // Factory constructors for common scenarios
  factory MediaSelectionOptions.imagesOnly({
    int maxImages = 50,
    CompressionOptions? compressionOptions,
  }) =>
      MediaSelectionOptions(
        maxImages: maxImages,
        maxVideos: 0,
        maxDocuments: 0,
        compressionOptions: compressionOptions,
      );

  factory MediaSelectionOptions.videosOnly({int maxVideos = 10}) =>
      MediaSelectionOptions(
        maxImages: 0,
        maxVideos: maxVideos,
        maxDocuments: 0,
      );

  factory MediaSelectionOptions.documentsOnly({int maxDocuments = 10}) =>
      MediaSelectionOptions(
        maxImages: 0,
        maxVideos: 0,
        maxDocuments: maxDocuments,
      );
}

/// Modern camera configuration
class CameraConfig {
  /// Metadata strategy (optional)
  final CameraMetadataStrategy? metadataStrategy;

  /// Initial capture mode
  final CaptureMode initialMode;

  /// Maximum video duration
  final Duration? maxVideoDuration;

  /// Video quality
  final VideoQuality videoQuality;

  /// UI customization
  final CameraUI? ui;

  const CameraConfig({
    this.metadataStrategy,
    this.initialMode = CaptureMode.photo,
    this.maxVideoDuration,
    this.videoQuality = VideoQuality.high,
    this.ui,
  });

  // Preset factory constructors
  factory CameraConfig.standard() => const CameraConfig();

  factory CameraConfig.inspection({
    required List<String> labels,
  }) =>
      CameraConfig(
        metadataStrategy: CameraMetadataStrategy.selectable(labels: labels),
      );

  factory CameraConfig.withSharedMetadata({
    required MediaMetadataEntity metadata,
  }) =>
      CameraConfig(
        metadataStrategy: CameraMetadataStrategy.shared(metadata: metadata),
      );

  factory CameraConfig.sequentialWithFallback({
    required List<MediaMetadataEntity> sequence,
    required MediaMetadataEntity fallback,
  }) =>
      CameraConfig(
        metadataStrategy: CameraMetadataStrategy.hybrid(
          sequence: sequence,
          fallback: fallback,
        ),
      );

  /// Check if overlay should be shown
  bool get shouldShowMetadataOverlay =>
      metadataStrategy?.when(
        selectable: (_, _) => true,
        sequential: (_) => false,
        shared: (_) => false,
        hybrid: (_, _) => false,
      ) ??
      false;
}

/// UI customization for camera
class CameraUI {
  final Color? cardColor;
  final Color? textColor;
  final Color? iconColor;
  final TextStyle? labelTextStyle;
  final bool showModeToggle;

  const CameraUI({
    this.cardColor,
    this.textColor,
    this.iconColor,
    this.labelTextStyle,
    this.showModeToggle = true,
  });
}

/// Camera capture mode
enum CaptureMode {
  photo,
  video,
  both,
}

/// Video quality settings
enum VideoQuality {
  low,
  medium,
  high,
  veryHigh,
}
