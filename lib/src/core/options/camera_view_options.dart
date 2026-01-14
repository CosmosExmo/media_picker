import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/entities/image_entity.dart';
import '../../domain/entities/video_entity.dart';
import '../../presentation/state/camera_state.dart';

/// Video quality settings for camera capture
enum VideoQuality {
  /// Low quality video
  low,

  /// Medium quality video
  medium,

  /// High quality video (default)
  high,

  /// Very high quality video
  veryHigh,
}

/// Options for configuring camera view appearance and behavior
class CameraViewOptions {
  const CameraViewOptions({
    this.imageMetadataList = const [],
    this.videoMetadataList = const [],
    this.cardColor = Colors.red,
    this.textColor = Colors.white,
    this.iconColor = Colors.white,
    this.galleryPhotoTitleTextStyle,
    this.appsSupportedOrientations = const [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ],
    this.showMetadataOverlay = true,
    this.showModeToggle = true,
    this.initialCaptureMode = CaptureMode.photo,
    this.maxVideoDuration,
    this.videoQuality = VideoQuality.high,
  });

  /// List of image metadata for selection overlay
  final List<ImageMetadataEntity> imageMetadataList;

  /// List of video metadata for selection overlay
  final List<VideoMetadataEntity> videoMetadataList;

  final Color cardColor;
  final Color textColor;
  final Color iconColor;
  final TextStyle? galleryPhotoTitleTextStyle;
  final List<DeviceOrientation> appsSupportedOrientations;

  /// Whether to show metadata selection overlay
  final bool showMetadataOverlay;

  /// Whether to show photo/video mode toggle
  final bool showModeToggle;

  /// Initial capture mode (photo, video, or both)
  final CaptureMode initialCaptureMode;

  /// Maximum video duration (null = no limit)
  final Duration? maxVideoDuration;

  /// Video quality for recording
  final VideoQuality videoQuality;
}
