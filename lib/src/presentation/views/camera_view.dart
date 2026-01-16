import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart' hide CaptureMode;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/options/compression_options.dart';
import '../../core/options/media_selection_options.dart';
import '../../core/utils/orientation_utils.dart';
import '../../data/datasources/compression/compression_datasource_impl.dart';
import '../../data/datasources/providers.dart';
import '../../domain/entities/media_entity.dart';
import '../../domain/entities/media_metadata_entity.dart';
import '../../domain/enums/permission_status.dart';
import '../notifiers/camera_notifier.dart';
import '../state/camera_state.dart' as app_state;
import 'widgets/camera_roll_widget.dart';

/// Camera view for capturing images and videos with metadata support
///
/// This widget provides a full-screen camera interface with:
/// - Live camera preview
/// - Image and video capture
/// - Metadata overlay selection (via CameraConfig)
/// - Camera roll for reviewing captured media
/// - Permission handling
///
///
/// Usage:
/// ```dart
/// final result = await Navigator.push<Map<String, dynamic>>(
///   context,
///   MaterialPageRoute(
///     builder: (_) => CameraView(
///       options: MediaSelectionOptions(
///         maxImages: 5,
///         cameraConfig: CameraConfig.inspection(
///           labels: ['Front', 'Back', 'Side'],
///         ),
///       ),
///     ),
///   ),
/// );
///
/// // Extract medias from result
/// final medias = result?['medias'] as List<MediaEntity>? ?? [];
/// ```
class CameraView extends StatefulWidget {
  final MediaSelectionOptions options;

  const CameraView({super.key, this.options = const MediaSelectionOptions()});

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  @override
  Widget build(BuildContext context) {
    // Create internal ProviderScope with compression options override
    // This hides Riverpod from users - they don't need ProviderScope in their app
    final compressionOptions =
        widget.options.compressionOptions ?? const CompressionOptions();

    return ProviderScope(
      overrides: [
        compressionDataSourceProvider.overrideWithValue(
          CompressionDataSourceImpl(compressionOptions),
        ),
      ],
      child: _CameraViewInternal(options: widget.options),
    );
  }
}

/// Internal camera view implementation using Riverpod
///
/// This widget is NOT exported publicly. Users only see the wrapper CameraView
/// which is a regular StatefulWidget.
class _CameraViewInternal extends ConsumerStatefulWidget {
  final MediaSelectionOptions options;

  const _CameraViewInternal({required this.options});

  @override
  ConsumerState<_CameraViewInternal> createState() =>
      _CameraViewInternalState();
}

class _CameraViewInternalState extends ConsumerState<_CameraViewInternal>
    with WidgetsBindingObserver {
  final _uuid = const Uuid();
  AppLifecycleState _appLifecycleState = AppLifecycleState.resumed;

  /// Guard flag to prevent multiple Navigator.pop calls (race condition fix)
  bool _isClosing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    // Request permission and set initial capture mode
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(cameraProvider.notifier).requestPermission();

      // Get initial capture mode from cameraConfig (default to photo)
      final initialMode =
          widget.options.cameraConfig?.initialMode ?? CaptureMode.photo;

      // Convert to app_state.CaptureMode
      final app_state.CaptureMode appCaptureMode;
      switch (initialMode) {
        case CaptureMode.photo:
          appCaptureMode = app_state.CaptureMode.photo;
        case CaptureMode.video:
          appCaptureMode = app_state.CaptureMode.video;
        case CaptureMode.both:
          appCaptureMode = app_state.CaptureMode.both;
      }

      ref.read(cameraProvider.notifier).setCaptureMode(appCaptureMode);
    });
  }

  @override
  void dispose() {
    // Reset orientation to system defaults when leaving camera
    SystemChrome.setPreferredOrientations(
      widget.options.themeOrientations ?? [],
    );
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _appLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cameraState = ref.watch(cameraProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      body: cameraState.when(
        data: (state) {
          // Check permission
          if (state.permissionStatus != PermissionStatus.granted) {
            return _buildPermissionDenied();
          }

          return SafeArea(
            child: Stack(
              children: [
                // Camera preview
                Positioned.fill(child: _buildCameraPreview(state)),

                // Metadata overlay (if enabled via cameraConfig)
                // TODO: Implement CameraMetadataStrategy pattern matching for overlay
                // For now, overlay is disabled pending full Strategy Pattern integration

                // Mode toggle (if enabled and not photo-only mode)
                if (widget.options.cameraConfig?.ui?.showModeToggle ?? true)
                  _buildModeToggle(state),

                // Recording indicator (when recording video)
                if (state.captureMode != app_state.CaptureMode.photo &&
                    state.isRecording)
                  _buildRecordingIndicator(state),

                // Camera roll (if visible)
                if (state.showCameraRoll)
                  CameraRollWidget(
                    images: state.capturedImages,
                    videos: state.capturedVideos,
                    onRemoveImage: (index) {
                      final imageId = state.capturedImages[index].id;
                      ref.read(cameraProvider.notifier).removeMedia(imageId);
                    },
                    onRemoveVideo: (index) {
                      final videoId = state.capturedVideos[index].id;
                      ref.read(cameraProvider.notifier).removeMedia(videoId);
                    },
                    onClose: () {
                      ref.read(cameraProvider.notifier).toggleCameraRoll();
                    },
                  ),
              ],
            ),
          );
        },
        loading: () =>
            const Center(child: CircularProgressIndicator(color: Colors.white)),
        error: (error, stack) => _buildError(error),
      ),
    );
  }

  Widget _buildCameraPreview(app_state.CameraState state) {
    if (_appLifecycleState != AppLifecycleState.resumed) {
      return Container(color: Colors.black);
    }
    return Align(
      alignment: Alignment.topCenter,
      child: _buildCameraAwesome(state),
    );
  }

  Widget _buildCameraAwesome(app_state.CameraState state) {
    // Determine SaveConfig based on capture mode
    final SaveConfig saveConfig = switch (state.captureMode) {
      app_state.CaptureMode.photo => SaveConfig.photo(),
      app_state.CaptureMode.video => SaveConfig.video(),
      app_state.CaptureMode.both => SaveConfig.photoAndVideo(),
    };

    final isTablet = OrientationUtils.isTablet(context);

    return RotatedBox(
      key: ValueKey(state.captureMode),
      quarterTurns: isTablet && !Platform.isAndroid ? 3 : 0,
      child: CameraAwesomeBuilder.custom(
        saveConfig: saveConfig,
        sensorConfig: SensorConfig.single(
          sensor: Sensor.position(SensorPosition.back),
          aspectRatio: CameraAspectRatios.ratio_16_9,
        ),
        enablePhysicalButton: true,
        previewFit: CameraPreviewFit.cover,
        previewAlignment: isTablet && !Platform.isAndroid
            ? Alignment.centerRight
            : Alignment.topCenter,
        onMediaCaptureEvent: (media) {
          debugPrint(
            '📸 Media Capture Event: status=${media.status}, isPicture=${media.isPicture}, isVideo=${media.isVideo}',
          );
          if (media.status == MediaCaptureStatus.success) {
            if (media.isPicture) {
              debugPrint('✅ Picture captured successfully');
              _handleCapturedImage(media, state.currentMetadata);
            } else if (media.isVideo) {
              debugPrint('✅ Video captured successfully');
              _handleCapturedVideo(media, state.currentMetadata);
            }
          } else if (media.status == MediaCaptureStatus.failure) {
            debugPrint('❌ Camera capture FAILED: ${media.exception}');
          } else if (media.status == MediaCaptureStatus.capturing) {
            debugPrint('⏳ Capturing in progress...');
          }
        },
        builder: (cameraState, preview) {
          return cameraState.when(
            onPreparingCamera: (prepState) => const Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
            onPhotoMode: (photoState) =>
                _buildCameraUI(photoState, state, preview),
            onVideoMode: (videoState) =>
                _buildCameraUI(videoState, state, preview),
            onVideoRecordingMode: (recordingState) =>
                _buildCameraUI(recordingState, state, preview),
          );
        },
      ),
    );
  }

  Widget _buildCameraUI(
    CameraState cameraState,
    app_state.CameraState appState,
    AnalysisPreview preview,
  ) {
    return Stack(
      children: [
        // Top actions
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  AwesomeFlashButton(state: cameraState),
                  const SizedBox(width: 12),
                  AwesomeZoomSelector(state: cameraState),
                  const Spacer(),
                  if (cameraState is PhotoCameraState)
                    AwesomeAspectRatioButton(state: cameraState),
                  const SizedBox(width: 12),
                  _buildCloseButton(),
                ],
              ),
            ),
          ),
        ),
        // Bottom actions
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 24,
              left: 24,
              right: 24,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AwesomeCameraSwitchButton(state: cameraState),
                  ),
                ),
                AwesomeCaptureButton(state: cameraState),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: _buildDoneButton(appState, cameraState),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _handleCapturedImage(
    MediaCapture media,
    MediaMetadataEntity? metadata,
  ) async {
    // Get file path from captureRequest
    media.captureRequest.when(
      single: (single) async {
        debugPrint('📷 Processing captured image: ${single.file?.path}');
        if (single.file != null) {
          try {
            final bytes = await File(single.file!.path).readAsBytes();
            final image = MediaEntity.image(
              id: _uuid.v4(),
              path: single.file!.path,
              extension: 'jpg',
              fileName: single.file!.path.split('/').last,
              fileSizeBytes: bytes.length,
              metadata: metadata,
            );
            debugPrint(
              '✅ Image processed: ${image.fileName}, size=${bytes.length} bytes',
            );
            ref.read(cameraProvider.notifier).addCapturedMedia(image);
          } catch (e, stack) {
            debugPrint('❌ Error reading captured image: $e');
            debugPrint('   Stack: $stack');
          }
        } else {
          debugPrint('⚠️ Single capture file is null');
        }
      },
      multiple: (multiple) async {
        // Handle multiple capture if needed in the future
        debugPrint('Multiple capture not yet implemented');
      },
    );
  }

  Future<void> _handleCapturedVideo(
    MediaCapture media,
    MediaMetadataEntity? metadata,
  ) async {
    // Get file path from captureRequest
    media.captureRequest.when(
      single: (single) async {
        debugPrint('🎥 Processing captured video: ${single.file?.path}');
        if (single.file != null) {
          try {
            final video = MediaEntity.video(
              id: _uuid.v4(),
              path: single.file!.path,
              extension: single.file!.path.split('.').last,
              fileName: single.file!.path.split('/').last,
              metadata: metadata,
            );
            debugPrint('✅ Video processed: ${video.fileName}');
            ref.read(cameraProvider.notifier).addCapturedMedia(video);
          } catch (e, stack) {
            debugPrint('❌ Error processing captured video: $e');
            debugPrint('   Stack: $stack');
          }
        } else {
          debugPrint('⚠️ Single video capture file is null');
        }
      },
      multiple: (multiple) async {
        debugPrint('⚠️ Multiple video capture not yet implemented');
      },
    );
  }

  Widget _buildCloseButton() {
    return IconButton(
      icon: const Icon(Icons.close, color: Colors.white, size: 28),
      onPressed: () {
        if (_isClosing) {
          return;
        }
        _isClosing = true;
        Navigator.pop(context);
      },
    );
  }

  Widget _buildDoneButton(
    app_state.CameraState state,
    CameraState cameraState,
  ) {
    final totalMediaCount =
        state.capturedImages.length + state.capturedVideos.length;

    return AwesomeOrientedWidget(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          disabledBackgroundColor: Colors.green.withValues(alpha: 0.5),
          disabledForegroundColor: Colors.white70,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
        icon: const Icon(Icons.check, size: 20),
        label: Text('$totalMediaCount'),
        onPressed: totalMediaCount == 0
            ? () => Navigator.pop(context)
            : () {
                if (_isClosing) {
                  return;
                }
                _isClosing = true;

                // Combine images and videos into unified medias list
                final List<MediaEntity> medias = [
                  ...state.capturedImages,
                  ...state.capturedVideos,
                ];

                Navigator.pop(context, {'medias': medias});
              },
      ),
    );
  }

  Widget _buildPermissionDenied() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.camera_alt_outlined,
            size: 80,
            color: Colors.white54,
          ),
          const SizedBox(height: 24),
          const Text(
            'Camera permission is required',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              ref.read(cameraProvider.notifier).requestPermission();
            },
            child: const Text('Grant Permission'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              if (_isClosing) {
                return;
              }
              _isClosing = true;
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildError(Object error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 80, color: Colors.red),
          const SizedBox(height: 24),
          const Text(
            'An error occurred',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              error.toString(),
              style: const TextStyle(color: Colors.white70),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              if (_isClosing) {
                return;
              }
              _isClosing = true;
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  Widget _buildModeToggle(app_state.CameraState state) {
    return Positioned(
      top: 64,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildModeButton(
                '',
                Icons.camera_alt,
                state.captureMode == app_state.CaptureMode.photo,
                () => ref
                    .read(cameraProvider.notifier)
                    .setCaptureMode(app_state.CaptureMode.photo),
              ),
              _buildModeButton(
                '',
                Icons.videocam,
                state.captureMode == app_state.CaptureMode.video,
                () => ref
                    .read(cameraProvider.notifier)
                    .setCaptureMode(app_state.CaptureMode.video),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModeButton(
    String label,
    IconData icon,
    bool isActive,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Icon(icon, color: isActive ? Colors.black : Colors.white, size: 20),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isActive ? Colors.black : Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecordingIndicator(app_state.CameraState state) {
    return Positioned(
      top: 48,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.fiber_manual_record,
                color: Colors.white,
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(
                _formatDuration(state.recordingDurationSeconds ?? 0),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDuration(int seconds) {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }
}
