/// A framework-agnostic Flutter package for media capture and selection.
///
/// Provides unified media operations for images, videos, and documents
/// through camera, gallery, and file picker.
library;

// ========== CORE API ==========

// ========== THIRD-PARTY RE-EXPORTS ==========

// Re-export Dartz Either for functional error handling
export 'package:dartz/dartz.dart' show Either, Left, Right, left, right;

/// Main entry point - Static facade for media operations (recommended for most users)
export 'src/core/media_picker.dart';
// Core Options
export 'src/core/options/camera_metadata_strategy.dart';
export 'src/core/options/compression_options.dart';
export 'src/core/options/media_selection_options.dart';
// DataSource Implementations
export 'src/data/datasources/camera/camera_datasource_impl.dart';
export 'src/data/datasources/compression/compression_datasource_impl.dart';
export 'src/data/datasources/file_picker/file_picker_datasource_impl.dart';
export 'src/data/datasources/gallery/gallery_datasource_impl.dart';
export 'src/data/datasources/permission/permission_datasource_impl.dart';
// Mappers (for advanced DI)
export 'src/data/models/mappers/document_mapper.dart';
export 'src/data/models/mappers/image_mapper.dart';
export 'src/data/models/mappers/video_mapper.dart';
// ========== DATA LAYER (for advanced DI) ==========

// Repository Implementations
export 'src/data/repositories/media_repository_impl.dart';
export 'src/data/repositories/permission_repository_impl.dart';
// Utilities (for advanced usage)
export 'src/data/utils/media_type_classifier.dart';
// ========== DOMAIN LAYER ==========

// Entities (Unified Media Entity)
export 'src/domain/entities/media_entity.dart';
export 'src/domain/entities/media_metadata_entity.dart';
// Enums
export 'src/domain/enums/image_source.dart';
export 'src/domain/enums/permission_status.dart';
// Failures (for error handling)
export 'src/domain/failures/media_failure.dart';
// Repository Interfaces (for advanced DI)
export 'src/domain/repositories/media_repository.dart';
export 'src/domain/repositories/permission_repository.dart';
// Use Cases (for advanced direct instantiation)
export 'src/domain/usecases/get_medias_from_camera_usecase.dart';
export 'src/domain/usecases/get_medias_from_files_usecase.dart';
export 'src/domain/usecases/get_medias_from_gallery_usecase.dart';
// ========== PRESENTATION LAYER ==========

// Views (UI components)
export 'src/presentation/views/camera_view.dart';
export 'src/presentation/views/widgets/camera_metadata_overlay.dart';
export 'src/presentation/views/widgets/camera_overlay_widget.dart';
export 'src/presentation/views/widgets/camera_roll_widget.dart';
export 'src/presentation/views/widgets/repository_selection_dialog.dart';
