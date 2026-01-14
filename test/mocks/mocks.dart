import 'package:media_picker/src/data/datasources/camera/camera_datasource.dart';
import 'package:media_picker/src/data/datasources/compression/compression_datasource.dart';
import 'package:media_picker/src/data/datasources/file_picker/file_picker_datasource.dart';
import 'package:media_picker/src/data/datasources/gallery/gallery_datasource.dart';
import 'package:media_picker/src/data/datasources/permission/permission_datasource.dart';
import 'package:media_picker/src/data/models/mappers/image_mapper.dart';
import 'package:media_picker/src/data/models/mappers/video_mapper.dart';
import 'package:media_picker/src/domain/repositories/media_repository.dart';
import 'package:media_picker/src/domain/repositories/permission_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  // Repositories
  MediaRepository,
  PermissionRepository,

  // DataSources
  CameraDataSource,
  GalleryDataSource,
  FilePickerDataSource,
  CompressionDataSource,
  PermissionDataSource,

  // Mappers
  ImageMapper,
  VideoMapper,
])
void main() {}
