// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageEntity {

 String get id; Uint8List get data; String get extension; String get path; String? get fileName; ImageMetadataEntity? get metadata;
/// Create a copy of ImageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageEntityCopyWith<ImageEntity> get copyWith => _$ImageEntityCopyWithImpl<ImageEntity>(this as ImageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.path, path) || other.path == path)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(data),extension,path,fileName,metadata);

@override
String toString() {
  return 'ImageEntity(id: $id, data: $data, extension: $extension, path: $path, fileName: $fileName, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ImageEntityCopyWith<$Res>  {
  factory $ImageEntityCopyWith(ImageEntity value, $Res Function(ImageEntity) _then) = _$ImageEntityCopyWithImpl;
@useResult
$Res call({
 String id, Uint8List data, String extension, String path, String? fileName, ImageMetadataEntity? metadata
});


$ImageMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class _$ImageEntityCopyWithImpl<$Res>
    implements $ImageEntityCopyWith<$Res> {
  _$ImageEntityCopyWithImpl(this._self, this._then);

  final ImageEntity _self;
  final $Res Function(ImageEntity) _then;

/// Create a copy of ImageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? data = null,Object? extension = null,Object? path = null,Object? fileName = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uint8List,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ImageMetadataEntity?,
  ));
}
/// Create a copy of ImageEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $ImageMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [ImageEntity].
extension ImageEntityPatterns on ImageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageEntity value)  $default,){
final _that = this;
switch (_that) {
case _ImageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ImageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Uint8List data,  String extension,  String path,  String? fileName,  ImageMetadataEntity? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageEntity() when $default != null:
return $default(_that.id,_that.data,_that.extension,_that.path,_that.fileName,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Uint8List data,  String extension,  String path,  String? fileName,  ImageMetadataEntity? metadata)  $default,) {final _that = this;
switch (_that) {
case _ImageEntity():
return $default(_that.id,_that.data,_that.extension,_that.path,_that.fileName,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Uint8List data,  String extension,  String path,  String? fileName,  ImageMetadataEntity? metadata)?  $default,) {final _that = this;
switch (_that) {
case _ImageEntity() when $default != null:
return $default(_that.id,_that.data,_that.extension,_that.path,_that.fileName,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _ImageEntity extends ImageEntity {
   _ImageEntity({required this.id, required this.data, required this.extension, required this.path, this.fileName, this.metadata}): super._();
  

@override final  String id;
@override final  Uint8List data;
@override final  String extension;
@override final  String path;
@override final  String? fileName;
@override final  ImageMetadataEntity? metadata;

/// Create a copy of ImageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageEntityCopyWith<_ImageEntity> get copyWith => __$ImageEntityCopyWithImpl<_ImageEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageEntity&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.path, path) || other.path == path)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(data),extension,path,fileName,metadata);

@override
String toString() {
  return 'ImageEntity(id: $id, data: $data, extension: $extension, path: $path, fileName: $fileName, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ImageEntityCopyWith<$Res> implements $ImageEntityCopyWith<$Res> {
  factory _$ImageEntityCopyWith(_ImageEntity value, $Res Function(_ImageEntity) _then) = __$ImageEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, Uint8List data, String extension, String path, String? fileName, ImageMetadataEntity? metadata
});


@override $ImageMetadataEntityCopyWith<$Res>? get metadata;

}
/// @nodoc
class __$ImageEntityCopyWithImpl<$Res>
    implements _$ImageEntityCopyWith<$Res> {
  __$ImageEntityCopyWithImpl(this._self, this._then);

  final _ImageEntity _self;
  final $Res Function(_ImageEntity) _then;

/// Create a copy of ImageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? data = null,Object? extension = null,Object? path = null,Object? fileName = freezed,Object? metadata = freezed,}) {
  return _then(_ImageEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uint8List,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ImageMetadataEntity?,
  ));
}

/// Create a copy of ImageEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageMetadataEntityCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $ImageMetadataEntityCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

/// @nodoc
mixin _$ImageMetadataEntity {

 String? get title; String? get description; DateTime? get capturedAt; Map<String, dynamic>? get customData; String? get overlayImagePath; String? get overlayImageUrl;
/// Create a copy of ImageMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageMetadataEntityCopyWith<ImageMetadataEntity> get copyWith => _$ImageMetadataEntityCopyWithImpl<ImageMetadataEntity>(this as ImageMetadataEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageMetadataEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.capturedAt, capturedAt) || other.capturedAt == capturedAt)&&const DeepCollectionEquality().equals(other.customData, customData)&&(identical(other.overlayImagePath, overlayImagePath) || other.overlayImagePath == overlayImagePath)&&(identical(other.overlayImageUrl, overlayImageUrl) || other.overlayImageUrl == overlayImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,capturedAt,const DeepCollectionEquality().hash(customData),overlayImagePath,overlayImageUrl);

@override
String toString() {
  return 'ImageMetadataEntity(title: $title, description: $description, capturedAt: $capturedAt, customData: $customData, overlayImagePath: $overlayImagePath, overlayImageUrl: $overlayImageUrl)';
}


}

/// @nodoc
abstract mixin class $ImageMetadataEntityCopyWith<$Res>  {
  factory $ImageMetadataEntityCopyWith(ImageMetadataEntity value, $Res Function(ImageMetadataEntity) _then) = _$ImageMetadataEntityCopyWithImpl;
@useResult
$Res call({
 String? title, String? description, DateTime? capturedAt, Map<String, dynamic>? customData, String? overlayImagePath, String? overlayImageUrl
});




}
/// @nodoc
class _$ImageMetadataEntityCopyWithImpl<$Res>
    implements $ImageMetadataEntityCopyWith<$Res> {
  _$ImageMetadataEntityCopyWithImpl(this._self, this._then);

  final ImageMetadataEntity _self;
  final $Res Function(ImageMetadataEntity) _then;

/// Create a copy of ImageMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? capturedAt = freezed,Object? customData = freezed,Object? overlayImagePath = freezed,Object? overlayImageUrl = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,customData: freezed == customData ? _self.customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,overlayImagePath: freezed == overlayImagePath ? _self.overlayImagePath : overlayImagePath // ignore: cast_nullable_to_non_nullable
as String?,overlayImageUrl: freezed == overlayImageUrl ? _self.overlayImageUrl : overlayImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageMetadataEntity].
extension ImageMetadataEntityPatterns on ImageMetadataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageMetadataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageMetadataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageMetadataEntity value)  $default,){
final _that = this;
switch (_that) {
case _ImageMetadataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageMetadataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ImageMetadataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? description,  DateTime? capturedAt,  Map<String, dynamic>? customData,  String? overlayImagePath,  String? overlayImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageMetadataEntity() when $default != null:
return $default(_that.title,_that.description,_that.capturedAt,_that.customData,_that.overlayImagePath,_that.overlayImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? description,  DateTime? capturedAt,  Map<String, dynamic>? customData,  String? overlayImagePath,  String? overlayImageUrl)  $default,) {final _that = this;
switch (_that) {
case _ImageMetadataEntity():
return $default(_that.title,_that.description,_that.capturedAt,_that.customData,_that.overlayImagePath,_that.overlayImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? description,  DateTime? capturedAt,  Map<String, dynamic>? customData,  String? overlayImagePath,  String? overlayImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _ImageMetadataEntity() when $default != null:
return $default(_that.title,_that.description,_that.capturedAt,_that.customData,_that.overlayImagePath,_that.overlayImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _ImageMetadataEntity extends ImageMetadataEntity {
   _ImageMetadataEntity({this.title, this.description, this.capturedAt, final  Map<String, dynamic>? customData, this.overlayImagePath, this.overlayImageUrl}): _customData = customData,super._();
  

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
@override final  String? overlayImageUrl;

/// Create a copy of ImageMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageMetadataEntityCopyWith<_ImageMetadataEntity> get copyWith => __$ImageMetadataEntityCopyWithImpl<_ImageMetadataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageMetadataEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.capturedAt, capturedAt) || other.capturedAt == capturedAt)&&const DeepCollectionEquality().equals(other._customData, _customData)&&(identical(other.overlayImagePath, overlayImagePath) || other.overlayImagePath == overlayImagePath)&&(identical(other.overlayImageUrl, overlayImageUrl) || other.overlayImageUrl == overlayImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,capturedAt,const DeepCollectionEquality().hash(_customData),overlayImagePath,overlayImageUrl);

@override
String toString() {
  return 'ImageMetadataEntity(title: $title, description: $description, capturedAt: $capturedAt, customData: $customData, overlayImagePath: $overlayImagePath, overlayImageUrl: $overlayImageUrl)';
}


}

/// @nodoc
abstract mixin class _$ImageMetadataEntityCopyWith<$Res> implements $ImageMetadataEntityCopyWith<$Res> {
  factory _$ImageMetadataEntityCopyWith(_ImageMetadataEntity value, $Res Function(_ImageMetadataEntity) _then) = __$ImageMetadataEntityCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description, DateTime? capturedAt, Map<String, dynamic>? customData, String? overlayImagePath, String? overlayImageUrl
});




}
/// @nodoc
class __$ImageMetadataEntityCopyWithImpl<$Res>
    implements _$ImageMetadataEntityCopyWith<$Res> {
  __$ImageMetadataEntityCopyWithImpl(this._self, this._then);

  final _ImageMetadataEntity _self;
  final $Res Function(_ImageMetadataEntity) _then;

/// Create a copy of ImageMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? capturedAt = freezed,Object? customData = freezed,Object? overlayImagePath = freezed,Object? overlayImageUrl = freezed,}) {
  return _then(_ImageMetadataEntity(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,capturedAt: freezed == capturedAt ? _self.capturedAt : capturedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,customData: freezed == customData ? _self._customData : customData // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,overlayImagePath: freezed == overlayImagePath ? _self.overlayImagePath : overlayImagePath // ignore: cast_nullable_to_non_nullable
as String?,overlayImageUrl: freezed == overlayImageUrl ? _self.overlayImageUrl : overlayImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
