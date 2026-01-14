// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImageDto {

 String get id; String get path; String get extension; String? get fileName; int? get width; int? get height; int? get fileSizeBytes; Map<String, dynamic>? get metadata;
/// Create a copy of ImageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImageDtoCopyWith<ImageDto> get copyWith => _$ImageDtoCopyWithImpl<ImageDto>(this as ImageDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImageDto&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,width,height,fileSizeBytes,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'ImageDto(id: $id, path: $path, extension: $extension, fileName: $fileName, width: $width, height: $height, fileSizeBytes: $fileSizeBytes, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ImageDtoCopyWith<$Res>  {
  factory $ImageDtoCopyWith(ImageDto value, $Res Function(ImageDto) _then) = _$ImageDtoCopyWithImpl;
@useResult
$Res call({
 String id, String path, String extension, String? fileName, int? width, int? height, int? fileSizeBytes, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$ImageDtoCopyWithImpl<$Res>
    implements $ImageDtoCopyWith<$Res> {
  _$ImageDtoCopyWithImpl(this._self, this._then);

  final ImageDto _self;
  final $Res Function(ImageDto) _then;

/// Create a copy of ImageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? width = freezed,Object? height = freezed,Object? fileSizeBytes = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,fileSizeBytes: freezed == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ImageDto].
extension ImageDtoPatterns on ImageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImageDto value)  $default,){
final _that = this;
switch (_that) {
case _ImageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ImageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String path,  String extension,  String? fileName,  int? width,  int? height,  int? fileSizeBytes,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImageDto() when $default != null:
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.width,_that.height,_that.fileSizeBytes,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String path,  String extension,  String? fileName,  int? width,  int? height,  int? fileSizeBytes,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _ImageDto():
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.width,_that.height,_that.fileSizeBytes,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String path,  String extension,  String? fileName,  int? width,  int? height,  int? fileSizeBytes,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _ImageDto() when $default != null:
return $default(_that.id,_that.path,_that.extension,_that.fileName,_that.width,_that.height,_that.fileSizeBytes,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc


class _ImageDto extends ImageDto {
   _ImageDto({required this.id, required this.path, required this.extension, this.fileName, this.width, this.height, this.fileSizeBytes, final  Map<String, dynamic>? metadata}): _metadata = metadata,super._();
  

@override final  String id;
@override final  String path;
@override final  String extension;
@override final  String? fileName;
@override final  int? width;
@override final  int? height;
@override final  int? fileSizeBytes;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ImageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImageDtoCopyWith<_ImageDto> get copyWith => __$ImageDtoCopyWithImpl<_ImageDto>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageDto&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.fileSizeBytes, fileSizeBytes) || other.fileSizeBytes == fileSizeBytes)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}


@override
int get hashCode => Object.hash(runtimeType,id,path,extension,fileName,width,height,fileSizeBytes,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'ImageDto(id: $id, path: $path, extension: $extension, fileName: $fileName, width: $width, height: $height, fileSizeBytes: $fileSizeBytes, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ImageDtoCopyWith<$Res> implements $ImageDtoCopyWith<$Res> {
  factory _$ImageDtoCopyWith(_ImageDto value, $Res Function(_ImageDto) _then) = __$ImageDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String path, String extension, String? fileName, int? width, int? height, int? fileSizeBytes, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$ImageDtoCopyWithImpl<$Res>
    implements _$ImageDtoCopyWith<$Res> {
  __$ImageDtoCopyWithImpl(this._self, this._then);

  final _ImageDto _self;
  final $Res Function(_ImageDto) _then;

/// Create a copy of ImageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? path = null,Object? extension = null,Object? fileName = freezed,Object? width = freezed,Object? height = freezed,Object? fileSizeBytes = freezed,Object? metadata = freezed,}) {
  return _then(_ImageDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,extension: null == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,fileSizeBytes: freezed == fileSizeBytes ? _self.fileSizeBytes : fileSizeBytes // ignore: cast_nullable_to_non_nullable
as int?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
