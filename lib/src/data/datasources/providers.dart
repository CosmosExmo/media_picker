import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/options/compression_options.dart';
import 'camera/camera_datasource.dart';
import 'camera/camera_datasource_impl.dart';
import 'compression/compression_datasource.dart';
import 'compression/compression_datasource_impl.dart';
import 'file_picker/file_picker_datasource.dart';
import 'file_picker/file_picker_datasource_impl.dart';
import 'gallery/gallery_datasource.dart';
import 'gallery/gallery_datasource_impl.dart';
import 'permission/permission_datasource.dart';
import 'permission/permission_datasource_impl.dart';

part 'providers.g.dart';

/// Provider for camera data source
@riverpod
CameraDataSource cameraDataSource(Ref ref) {
  return const CameraDataSourceImpl();
}

/// Provider for gallery data source
@riverpod
GalleryDataSource galleryDataSource(Ref ref) {
  return GalleryDataSourceImpl();
}

/// Provider for file picker data source
@riverpod
FilePickerDataSource filePickerDataSource(Ref ref) {
  return const FilePickerDataSourceImpl();
}

/// Provider for compression data source
///
/// Uses compression options from the options provider
@riverpod
CompressionDataSource compressionDataSource(Ref ref) {
  // For now, use default compression options
  // This can be overridden or configured as needed
  const options = CompressionOptions();
  return const CompressionDataSourceImpl(options);
}

/// Provider for permission data source
@riverpod
PermissionDataSource permissionDataSource(Ref ref) {
  return const PermissionDataSourceImpl();
}
