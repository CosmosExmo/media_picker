import 'package:image_picker/image_picker.dart';

import '../../models/image_dto.dart';
import '../../models/video_dto.dart';

/// Abstract interface for gallery data source
///
/// Defines the contract for gallery/photo and video picker operations.
/// Implementations should wrap the underlying image picker plugin.
abstract class GalleryDataSource {
  /// Pick multiple images from device gallery
  ///
  /// [maxImages] Maximum number of images that can be selected
  /// Returns list of [ImageDto] containing selected images
  /// Throws exception if picking fails
  Future<List<ImageDto>> pickImages(int maxImages);

  /// Pick multiple videos from device gallery
  ///
  /// [maxVideos] Maximum number of videos that can be selected
  /// Returns list of [VideoDto] containing selected videos
  /// Throws exception if picking fails
  Future<List<VideoDto>> pickVideos(int maxVideos);

  /// Pick mixed media (images and videos) from gallery
  ///
  /// [maxItems] Maximum total number of media items that can be selected
  /// Returns list of [XFile] containing selected media (images and/or videos)
  /// Throws exception if picking fails
  Future<List<XFile>> pickMixedMedia({required int maxItems});
}
