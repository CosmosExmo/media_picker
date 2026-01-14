// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoDto {

 String get id; String get path; String get extension; String? get fileName; int? get durationMs; int? get width; int? get height; int? get fileSizeBytes; String? get thumbnailPath; double? get frameRate; Map<String, dynamic>? get metadata;
/// Create a copy of VideoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoDtoCopyWith<VideoDto> get copyWith => _$VideoDtoCopyWithImpl<VideoDto>(this as VideoDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoDto&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.frameRate, frameRate) || other.frameRate == frameRate)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,durationMs,width,height,fileSizeBytes,thumbnailPath,frameRate,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'VideoDto(id: $id, path: $path, extension: $extension, fileName: $fileName, durationMs: $durationMs, width: $width, height: $height, fileSizeBytes: $fileSizeBytes, thumbnailPath: $thumbnailPath, frameRate: $frameRate, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $VideoDtoCopyWith<$Res>  {
  factory $VideoDtoCopyWith(VideoDto value, $Res Function(VideoDto) _then) = _$VideoDtoCopyWithImpl;
@useResult
$Res call({
 String id, String path, String extension, String? fileName, int? durationMs, int? width, int? height, int? fileSizeBytes, String? thumbnailPath, double? frameRate, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$VideoDtoCopyWithImpl<$Res>
    implements $VideoDtoCopyWith<$Res> {
  _$VideoDtoCopyWithImpl(this._self, this._then);

  final VideoDto _self;
  final $Res Function(VideoDto) _then;

/// Create a copy of VideoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? durationMs = freezed,Object? width = freezed,Object? height = freezed,Object? fileSizeBytes = freezed,Object? thumbnailPath = freezed,Object? frameRate = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
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
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoDto].
extension VideoDtoPatterns on VideoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoDto value)  $default,){
final _that = this;
switch (_that) {
case _VideoDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoDto value)?  $default,){
final _that = this;
switch (_that) {
case _VideoDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  int? fileSizeBytes,  String? thumbnailPath,  double? frameRate,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoDto() when $default != null:
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.fileSizeBytes,_that.thumbnailPath,_that.frameRate,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  int? fileSizeBytes,  String? thumbnailPath,  double? frameRate,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _VideoDto():
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.fileSizeBytes,_that.thumbnailPath,_that.frameRate,_that.metadata);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  int? fileSizeBytes,  String? thumbnailPath,  double? frameRate,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _VideoDto() when $default != null:
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.fileSizeBytes,_that.thumbnailPath,_that.frameRate,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _VideoDto extends VideoDto {
   _VideoDto({required this.id, required this.path, required this.extension, this.fileName, this.durationMs, this.width, this.height, this.fileSizeBytes, this.thumbnailPath, this.frameRate, final  Map<String, dynamic>? metadata}): _metadata = metadata,super._();
  

@override final  String id;
@override final  String path;
@override final  String extension;
@override final  String? fileName;
@override final  int? durationMs;
@override final  int? width;
@override final  int? height;
@override final  int? fileSizeBytes;
@override final  String? thumbnailPath;
@override final  double? frameRate;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of VideoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoDtoCopyWith<_VideoDto> get copyWith => __$VideoDtoCopyWithImpl<_VideoDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoDto&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.frameRate, frameRate) || other.frameRate == frameRate)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,durationMs,width,height,fileSizeBytes,thumbnailPath,frameRate,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'VideoDto(id: $id, path: $path, extension: $extension, fileName: $fileName, durationMs: $durationMs, width: $width, height: $height, fileSizeBytes: $fileSizeBytes, thumbnailPath: $thumbnailPath, frameRate: $frameRate, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$VideoDtoCopyWith<$Res> implements $VideoDtoCopyWith<$Res> {
  factory _$VideoDtoCopyWith(_VideoDto value, $Res Function(_VideoDto) _then) = __$VideoDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String path, String extension, String? fileName, int? durationMs, int? width, int? height, int? fileSizeBytes, String? thumbnailPath, double? frameRate, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$VideoDtoCopyWithImpl<$Res>
    implements _$VideoDtoCopyWith<$Res> {
  __$VideoDtoCopyWithImpl(this._self, this._then);

  final _VideoDto _self;
  final $Res Function(_VideoDto) _then;

/// Create a copy of VideoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? durationMs = freezed,Object? width = freezed,Object? height = freezed,Object? fileSizeBytes = freezed,Object? thumbnailPath = freezed,Object? frameRate = freezed,Object? metadata = freezed,}) {
  return _then(_VideoDto(
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
as double?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
