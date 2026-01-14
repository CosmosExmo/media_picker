import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/providers.dart';
import 'get_medias_from_camera_usecase.dart';
import 'get_medias_from_files_usecase.dart';
import 'get_medias_from_gallery_usecase.dart';

part 'providers.g.dart';

/// Provider for get medias from camera use case
@riverpod
GetMediasFromCameraUsecase getMediasFromCameraUsecase(Ref ref) {
  return GetMediasFromCameraUsecase(
    ref.watch(mediaRepositoryProvider),
    ref.watch(permissionRepositoryProvider),
  );
}

/// Provider for get medias from gallery use case
@riverpod
GetMediasFromGalleryUsecase getMediasFromGalleryUsecase(Ref ref) {
  return GetMediasFromGalleryUsecase(
    ref.watch(mediaRepositoryProvider),
    ref.watch(permissionRepositoryProvider),
  );
}

/// Provider for get medias from files use case
@riverpod
GetMediasFromFilesUsecase getMediasFromFilesUsecase(Ref ref) {
  return GetMediasFromFilesUsecase(
    ref.watch(mediaRepositoryProvider),
  );
}
