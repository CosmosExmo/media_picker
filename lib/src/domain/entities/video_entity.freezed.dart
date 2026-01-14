// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoEntity {

 String get id; String get path; String get extension; String? get fileName; int? get durationMs; int? get width; int? get height; String? get thumbnailPath; VideoMetadataEntity? get metadata;
/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoEntityCopyWith<VideoEntity> get copyWith => _$VideoEntityCopyWithImpl<VideoEntity>(this as VideoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,durationMs,width,height,thumbnailPath,metadata);

@override
String toString() {
  return 'VideoEntity(id: $id, path: $path, extension: $extension, fileName: $fileName, durationMs: $durationMs, width: $width, height: $height, thumbnailPath: $thumbnailPath, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $VideoEntityCopyWith<$Res>  {
  factory $VideoEntityCopyWith(VideoEntity value, $Res Function(VideoEntity) _then) = _$VideoEntityCopyWithImpl;
@useResult
$Res call({
 String id, String path, String extension, String? fileName, int? durationMs, int? width, int? height, String? thumbnailPath, VideoMetadataEntity? metadata
});


$VideoMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$VideoEntityCopyWithImpl<$Res>
    implements $VideoEntityCopyWith<$Res> {
  _$VideoEntityCopyWithImpl(this._self, this._then);

  final VideoEntity _self;
  final $Res Function(VideoEntity) _then;

/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? durationMs = freezed,Object? width = freezed,Object? height = freezed,Object? thumbnailPath = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,thumbnailPath: freezed == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as VideoMetadataEntity?,
  ));
}
/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $VideoMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoEntity].
extension VideoEntityPatterns on VideoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoEntity value)  $default,){
final _that = this;
switch (_that) {
case _VideoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VideoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  String? thumbnailPath,  VideoMetadataEntity? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoEntity() when $default != null:
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.thumbnailPath,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  String? thumbnailPath,  VideoMetadataEntity? metadata)  $default,) {final _that = this;
switch (_that) {
case _VideoEntity():
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.thumbnailPath,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String path,  String extension,  String? fileName,  int? durationMs,  int? width,  int? height,  String? thumbnailPath,  VideoMetadataEntity? metadata)?  $default,) {final _that = this;
switch (_that) {
case _VideoEntity() when $default != null:
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.durationMs,_that.width,_that.height,_that.thumbnailPath,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _VideoEntity extends VideoEntity {
   _VideoEntity({required this.id, required this.path, required this.extension, this.fileName, this.durationMs, this.width, this.height, this.thumbnailPath, this.metadata}): super._();
  

@override final  String id;
@override final  String path;
@override final  String extension;
@override final  String? fileName;
@override final  int? durationMs;
@override final  int? width;
@override final  int? height;
@override final  String? thumbnailPath;
@override final  VideoMetadataEntity? metadata;

/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoEntityCopyWith<_VideoEntity> get copyWith => __$VideoEntityCopyWithImpl<_VideoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.durationMs, durationMs) || other.durationMs == durationMs)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,durationMs,width,height,thumbnailPath,metadata);

@override
String toString() {
  return 'VideoEntity(id: $id, path: $path, extension: $extension, fileName: $fileName, durationMs: $durationMs, width: $width, height: $height, thumbnailPath: $thumbnailPath, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$VideoEntityCopyWith<$Res> implements $VideoEntityCopyWith<$Res> {
  factory _$VideoEntityCopyWith(_VideoEntity value, $Res Function(_VideoEntity) _then) = __$VideoEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String path, String extension, String? fileName, int? durationMs, int? width, int? height, String? thumbnailPath, VideoMetadataEntity? metadata
});


@override $VideoMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$VideoEntityCopyWithImpl<$Res>
    implements _$VideoEntityCopyWith<$Res> {
  __$VideoEntityCopyWithImpl(this._self, this._then);

  final _VideoEntity _self;
  final $Res Function(_VideoEntity) _then;

/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? durationMs = freezed,Object? width = freezed,Object? height = freezed,Object? thumbnailPath = freezed,Object? metadata = freezed,}) {
  return _then(_VideoEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,durationMs: freezed == durationMs ? _self.durationMs : durationMs // ignore: cast_nullable_to_non_nullable
as int?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,thumbnailPath: freezed == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as VideoMetadataEntity?,
  ));
}

/// Create a copy of VideoEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $VideoMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

/// @nodoc
mixin _$VideoMetadataEntity {

 String? get title; String? get description; DateTime? get capturedAt; Map<String, dynamic>? get customData; String? get overlayImagePath; double? get frameRate;
/// Create a copy of VideoMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoMetadataEntityCopyWith<VideoMetadataEntity> get copyWith => _$VideoMetadataEntityCopyWithImpl<VideoMetadataEntity>(this as VideoMetadataEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoMetadataEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.capturedAt, capturedAt) || other.capturedAt == capturedAt)&&const DeepCollectionEquality().equals(other.customData, customData)&&(identical(other.overlayImagePath, overlayImagePath) || other.overlayImagePath == overlayImagePath)&&(identical(other.frameRate, frameRate) || other.frameRate == frameRate));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,capturedAt,const DeepCollectionEquality().hash(customData),overlayImagePath,frameRate);

@override
String toString() {
  return 'VideoMetadataEntity(title: $title, description: $description, capturedAt: $capturedAt, customData: $customData, overlayImagePath: $overlayImagePath, frameRate: $frameRate)';
}


}

/// @nodoc
abstract mixin class $VideoMetadataEntityCopyWith<$Res>  {
  factory $VideoMetadataEntityCopyWith(VideoMetadataEntity value, $Res Function(VideoMetadataEntity) _then) = _$VideoMetadataEntityCopyWithImpl;
@useResult
$Res call({
 String? title, String? description, DateTime? capturedAt, Map<String, dynamic>? customData, String? overlayImagePath, double? frameRate
});




}
/// @nodoc
class _$VideoMetadataEntityCopyWithImpl<$Res>
    implements $VideoMetadataEntityCopyWith<$Res> {
  _$VideoMetadataEntityCopyWithImpl(this._self, this._then);

  final VideoMetadataEntity _self;
  final $Res Function(VideoMetadataEntity) _then;

/// Create a copy of VideoMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? capturedAt = freezed,Object? customData = freezed,Object? overlayImagePath = freezed,Object? frameRate = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,overlayImagePath: freezed == overlayImagePath ? _self.overlayImagePath : overlayImagePath // ignore: cast_nullable_to_non_nullable
as String?,frameRate: freezed == frameRate ? _self.frameRate : frameRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [VideoMetadataEntity].
extension VideoMetadataEntityPatterns on VideoMetadataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoMetadataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoMetadataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoMetadataEntity value)  $default,){
final _that = this;
switch (_that) {
case _VideoMetadataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoMetadataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VideoMetadataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? description,  DateTime? capturedAt,  Map<String, dynamic>? customData,  String? overlayImagePath,  double? frameRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoMetadataEntity() when $default != null:
return $default(_that.title,_that.description,_that.capturedAt,_that.customData,_that.overlayImagePath,_that.frameRate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? description,  DateTime? capturedAt,  Map<String, dynamic>? customData,  String? overlayImagePath,  double? frameRate)  $default,) {final _that = this;
switch (_that) {
case _VideoMetadataEntity():
return $default(_that.title,_that.description,_that.capturedAt,_that.customData,_that.overlayImagePath,_that.frameRate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? description,  DateTime? capturedAt,  Map<String, dynamic>? customData,  String? overlayImagePath,  double? frameRate)?  $default,) {final _that = this;
switch (_that) {
case _VideoMetadataEntity() when $default != null:
return $default(_that.title,_that.description,_that.capturedAt,_that.customData,_that.overlayImagePath,_that.frameRate);case _:
  return null;

}
}

}

/// @nodoc


class _VideoMetadataEntity extends VideoMetadataEntity {
   _VideoMetadataEntity({this.title, this.description, this.capturedAt, final  Map<String, dynamic>? customData, this.overlayImagePath, this.frameRate}): _customData = customData,super._();
  

@override final  String? title;
@override final  String? description;
@override final  DateTime? capturedAt;
 final  Map<String, dynamic>? _customData;
@override Map<String, dynamic>? get customData {
  final value = _customData;
  if (value == null) return null;
  if (_customData is EqualUnmodifiableMapView) return _customData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? overlayImagePath;
@override final  double? frameRate;

/// Create a copy of VideoMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoMetadataEntityCopyWith<_VideoMetadataEntity> get copyWith => __$VideoMetadataEntityCopyWithImpl<_VideoMetadataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoMetadataEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.capturedAt, capturedAt) || other.capturedAt == capturedAt)&&const DeepCollectionEquality().equals(other._customData, _customData)&&(identical(other.overlayImagePath, overlayImagePath) || other.overlayImagePath == overlayImagePath)&&(identical(other.frameRate, frameRate) || other.frameRate == frameRate));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,capturedAt,const DeepCollectionEquality().hash(_customData),overlayImagePath,frameRate);

@override
String toString() {
  return 'VideoMetadataEntity(title: $title, description: $description, capturedAt: $capturedAt, customData: $customData, overlayImagePath: $overlayImagePath, frameRate: $frameRate)';
}


}

/// @nodoc
abstract mixin class _$VideoMetadataEntityCopyWith<$Res> implements $VideoMetadataEntityCopyWith<$Res> {
  factory _$VideoMetadataEntityCopyWith(_VideoMetadataEntity value, $Res Function(_VideoMetadataEntity) _then) = __$VideoMetadataEntityCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description, DateTime? capturedAt, Map<String, dynamic>? customData, String? overlayImagePath, double? frameRate
});




}
/// @nodoc
class __$VideoMetadataEntityCopyWithImpl<$Res>
    implements _$VideoMetadataEntityCopyWith<$Res> {
  __$VideoMetadataEntityCopyWithImpl(this._self, this._then);

  final _VideoMetadataEntity _self;
  final $Res Function(_VideoMetadataEntity) _then;

/// Create a copy of VideoMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? capturedAt = freezed,Object? customData = freezed,Object? overlayImagePath = freezed,Object? frameRate = freezed,}) {
  return _then(_VideoMetadataEntity(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,overlayImagePath: freezed == overlayImagePath ? _self.overlayImagePath : overlayImagePath // ignore: cast_nullable_to_non_nullable
as String?,frameRate: freezed == frameRate ? _self.frameRate : frameRate // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
