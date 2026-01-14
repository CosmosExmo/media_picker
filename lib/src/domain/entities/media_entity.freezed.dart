// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaEntity {

 String get id; String get path; String get extension; String? get fileName; int? get fileSizeBytes; MediaMetadataEntity? get metadata;
/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaEntityCopyWith<MediaEntity> get copyWith => _$MediaEntityCopyWithImpl<MediaEntity>(this as MediaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,fileSizeBytes,metadata);

@override
String toString() {
  return 'MediaEntity(id: $id, path: $path, extension: $extension, fileName: $fileName, fileSizeBytes: $fileSizeBytes, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $MediaEntityCopyWith<$Res>  {
  factory $MediaEntityCopyWith(MediaEntity value, $Res Function(MediaEntity) _then) = _$MediaEntityCopyWithImpl;
@useResult
$Res call({
 String id, String path, String extension, String? fileName, int? fileSizeBytes, MediaMetadataEntity? metadata
});


$MediaMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$MediaEntityCopyWithImpl<$Res>
    implements $MediaEntityCopyWith<$Res> {
  _$MediaEntityCopyWithImpl(this._self, this._then);

  final MediaEntity _self;
  final $Res Function(MediaEntity) _then;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? fileSizeBytes = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileSizeBytes: freezed == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity?,
  ));
}
/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MediaMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [MediaEntity].
extension MediaEntityPatterns on MediaEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ImageMedia value)?  image,TResult Function( VideoMedia value)?  video,TResult Function( DocumentMedia value)?  document,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ImageMedia() when image != null:
return image(_that);case VideoMedia() when video != null:
return video(_that);case DocumentMedia() when document != null:
return document(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ImageMedia value)  image,required TResult Function( VideoMedia value)  video,required TResult Function( DocumentMedia value)  document,}){
final _that = this;
switch (_that) {
case ImageMedia():
return image(_that);case VideoMedia():
return video(_that);case DocumentMedia():
return document(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ImageMedia value)?  image,TResult? Function( VideoMedia value)?  video,TResult? Function( DocumentMedia value)?  document,}){
final _that = this;
switch (_that) {
case ImageMedia() when image != null:
return image(_that);case VideoMedia() when video != null:
return video(_that);case DocumentMedia() when document != null:
return document(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String path,  String extension,  String? fileName,  int? width,  int? height,  int? fileSizeBytes,  MediaMetadataEntity? metadata)?  image,TResult Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  int? fileSizeBytes,  String? thumbnailPath,  double? frameRate,  MediaMetadataEntity? metadata)?  video,TResult Function( String id,  String path,  String extension,  String? fileName,  int? pageCount,  int? fileSizeBytes,  String? mimeType,  MediaMetadataEntity? metadata)?  document,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ImageMedia() when image != null:
return image(_that.id,_that.path,_that.extension,_that.fileName,_that.width,_that.height,_that.fileSizeBytes,_that.metadata);case VideoMedia() when video != null:
return video(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.fileSizeBytes,_that.thumbnailPath,_that.frameRate,_that.metadata);case DocumentMedia() when document != null:
return document(_that.id,_that.path,_that.extension,_that.fileName,_that.pageCount,_that.fileSizeBytes,_that.mimeType,_that.metadata);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String path,  String extension,  String? fileName,  int? width,  int? height,  int? fileSizeBytes,  MediaMetadataEntity? metadata)  image,required TResult Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  int? fileSizeBytes,  String? thumbnailPath,  double? frameRate,  MediaMetadataEntity? metadata)  video,required TResult Function( String id,  String path,  String extension,  String? fileName,  int? pageCount,  int? fileSizeBytes,  String? mimeType,  MediaMetadataEntity? metadata)  document,}) {final _that = this;
switch (_that) {
case ImageMedia():
return image(_that.id,_that.path,_that.extension,_that.fileName,_that.width,_that.height,_that.fileSizeBytes,_that.metadata);case VideoMedia():
return video(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.fileSizeBytes,_that.thumbnailPath,_that.frameRate,_that.metadata);case DocumentMedia():
return document(_that.id,_that.path,_that.extension,_that.fileName,_that.pageCount,_that.fileSizeBytes,_that.mimeType,_that.metadata);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String path,  String extension,  String? fileName,  int? width,  int? height,  int? fileSizeBytes,  MediaMetadataEntity? metadata)?  image,TResult? Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  int? fileSizeBytes,  String? thumbnailPath,  double? frameRate,  MediaMetadataEntity? metadata)?  video,TResult? Function( String id,  String path,  String extension,  String? fileName,  int? pageCount,  int? fileSizeBytes,  String? mimeType,  MediaMetadataEntity? metadata)?  document,}) {final _that = this;
switch (_that) {
case ImageMedia() when image != null:
return image(_that.id,_that.path,_that.extension,_that.fileName,_that.width,_that.height,_that.fileSizeBytes,_that.metadata);case VideoMedia() when video != null:
return video(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.fileSizeBytes,_that.thumbnailPath,_that.frameRate,_that.metadata);case DocumentMedia() when document != null:
return document(_that.id,_that.path,_that.extension,_that.fileName,_that.pageCount,_that.fileSizeBytes,_that.mimeType,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class ImageMedia extends MediaEntity {
  const ImageMedia({required this.id, required this.path, required this.extension, this.fileName, this.width, this.height, this.fileSizeBytes, this.metadata}): super._();
  

@override final  String id;
@override final  String path;
@override final  String extension;
@override final  String? fileName;
 final  int? width;
 final  int? height;
@override final  int? fileSizeBytes;
@override final  MediaMetadataEntity? metadata;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageMediaCopyWith<ImageMedia> get copyWith => _$ImageMediaCopyWithImpl<ImageMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,width,height,fileSizeBytes,metadata);

@override
String toString() {
  return 'MediaEntity.image(id: $id, path: $path, extension: $extension, fileName: $fileName, width: $width, height: $height, fileSizeBytes: $fileSizeBytes, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ImageMediaCopyWith<$Res> implements $MediaEntityCopyWith<$Res> {
  factory $ImageMediaCopyWith(ImageMedia value, $Res Function(ImageMedia) _then) = _$ImageMediaCopyWithImpl;
@override @useResult
$Res call({
 String id, String path, String extension, String? fileName, int? width, int? height, int? fileSizeBytes, MediaMetadataEntity? metadata
});


@override $MediaMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$ImageMediaCopyWithImpl<$Res>
    implements $ImageMediaCopyWith<$Res> {
  _$ImageMediaCopyWithImpl(this._self, this._then);

  final ImageMedia _self;
  final $Res Function(ImageMedia) _then;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? width = freezed,Object? height = freezed,Object? fileSizeBytes = freezed,Object? metadata = freezed,}) {
  return _then(ImageMedia(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,fileSizeBytes: freezed == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity?,
  ));
}

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MediaMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

/// @nodoc


class VideoMedia extends MediaEntity {
  const VideoMedia({required this.id, required this.path, required this.extension, this.fileName, this.durationMs, this.width, this.height, this.fileSizeBytes, this.thumbnailPath, this.frameRate, this.metadata}): super._();
  

@override final  String id;
@override final  String path;
@override final  String extension;
@override final  String? fileName;
 final  int? durationMs;
 final  int? width;
 final  int? height;
@override final  int? fileSizeBytes;
 final  String? thumbnailPath;
 final  double? frameRate;
@override final  MediaMetadataEntity? metadata;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoMediaCopyWith<VideoMedia> get copyWith => _$VideoMediaCopyWithImpl<VideoMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.frameRate, frameRate) || other.frameRate == frameRate)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,durationMs,width,height,fileSizeBytes,thumbnailPath,frameRate,metadata);

@override
String toString() {
  return 'MediaEntity.video(id: $id, path: $path, extension: $extension, fileName: $fileName, durationMs: $durationMs, width: $width, height: $height, fileSizeBytes: $fileSizeBytes, thumbnailPath: $thumbnailPath, frameRate: $frameRate, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $VideoMediaCopyWith<$Res> implements $MediaEntityCopyWith<$Res> {
  factory $VideoMediaCopyWith(VideoMedia value, $Res Function(VideoMedia) _then) = _$VideoMediaCopyWithImpl;
@override @useResult
$Res call({
 String id, String path, String extension, String? fileName, int? durationMs, int? width, int? height, int? fileSizeBytes, String? thumbnailPath, double? frameRate, MediaMetadataEntity? metadata
});


@override $MediaMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$VideoMediaCopyWithImpl<$Res>
    implements $VideoMediaCopyWith<$Res> {
  _$VideoMediaCopyWithImpl(this._self, this._then);

  final VideoMedia _self;
  final $Res Function(VideoMedia) _then;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? durationMs = freezed,Object? width = freezed,Object? height = freezed,Object? fileSizeBytes = freezed,Object? thumbnailPath = freezed,Object? frameRate = freezed,Object? metadata = freezed,}) {
  return _then(VideoMedia(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,fileSizeBytes: freezed == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int?,thumbnailPath: freezed == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String?,frameRate: freezed == frameRate ? _self.frameRate : frameRate // ignore: cast_nullable_to_non_nullable
as double?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity?,
  ));
}

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MediaMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

/// @nodoc


class DocumentMedia extends MediaEntity {
  const DocumentMedia({required this.id, required this.path, required this.extension, this.fileName, this.pageCount, this.fileSizeBytes, this.mimeType, this.metadata}): super._();
  

@override final  String id;
@override final  String path;
@override final  String extension;
@override final  String? fileName;
 final  int? pageCount;
@override final  int? fileSizeBytes;
 final  String? mimeType;
@override final  MediaMetadataEntity? metadata;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentMediaCopyWith<DocumentMedia> get copyWith => _$DocumentMediaCopyWithImpl<DocumentMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,pageCount,fileSizeBytes,mimeType,metadata);

@override
String toString() {
  return 'MediaEntity.document(id: $id, path: $path, extension: $extension, fileName: $fileName, pageCount: $pageCount, fileSizeBytes: $fileSizeBytes, mimeType: $mimeType, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $DocumentMediaCopyWith<$Res> implements $MediaEntityCopyWith<$Res> {
  factory $DocumentMediaCopyWith(DocumentMedia value, $Res Function(DocumentMedia) _then) = _$DocumentMediaCopyWithImpl;
@override @useResult
$Res call({
 String id, String path, String extension, String? fileName, int? pageCount, int? fileSizeBytes, String? mimeType, MediaMetadataEntity? metadata
});


@override $MediaMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$DocumentMediaCopyWithImpl<$Res>
    implements $DocumentMediaCopyWith<$Res> {
  _$DocumentMediaCopyWithImpl(this._self, this._then);

  final DocumentMedia _self;
  final $Res Function(DocumentMedia) _then;

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? pageCount = freezed,Object? fileSizeBytes = freezed,Object? mimeType = freezed,Object? metadata = freezed,}) {
  return _then(DocumentMedia(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int?,fileSizeBytes: freezed == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity?,
  ));
}

/// Create a copy of MediaEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $MediaMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

// dart format on
