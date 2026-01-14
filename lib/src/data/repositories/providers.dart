import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/media_repository.dart';
import '../../domain/repositories/permission_repository.dart';
import '../datasources/providers.dart';
import '../models/mappers/image_mapper.dart';
import '../models/mappers/video_mapper.dart';
import '../models/mappers/document_mapper.dart';
import 'media_repository_impl.dart';
import 'permission_repository_impl.dart';

part 'providers.g.dart';

/// Provider for media repository
@riverpod
MediaRepository mediaRepository(Ref ref) {
  return MediaRepositoryImpl(
    galleryDataSource: ref.watch(galleryDataSourceProvider),
    filePickerDataSource: ref.watch(filePickerDataSourceProvider),
    compressionDataSource: ref.watch(compressionDataSourceProvider),
    imageMapper: const ImageMapper(),
    videoMapper: const VideoMapper(),
    documentMapper: const DocumentMapper(),
  );
}

/// Provider for permission repository
@riverpod
PermissionRepository permissionRepository(Ref ref) {
  return PermissionRepositoryImpl(
    permissionDataSource: ref.watch(permissionDataSourceProvider),
  );
}
