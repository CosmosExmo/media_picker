// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_metadata_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaMetadataEntity {

 String? get title; String? get description; String? get overlayImagePath; String? get overlayImageUrl;
/// Create a copy of MediaMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<MediaMetadataEntity> get copyWith => _$MediaMetadataEntityCopyWithImpl<MediaMetadataEntity>(this as MediaMetadataEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaMetadataEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.overlayImagePath, overlayImagePath) || other.overlayImagePath == overlayImagePath)&&(identical(other.overlayImageUrl, overlayImageUrl) || other.overlayImageUrl == overlayImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,overlayImagePath,overlayImageUrl);

@override
String toString() {
  return 'MediaMetadataEntity(title: $title, description: $description, overlayImagePath: $overlayImagePath, overlayImageUrl: $overlayImageUrl)';
}


}

/// @nodoc
abstract mixin class $MediaMetadataEntityCopyWith<$Res>  {
  factory $MediaMetadataEntityCopyWith(MediaMetadataEntity value, $Res Function(MediaMetadataEntity) _then) = _$MediaMetadataEntityCopyWithImpl;
@useResult
$Res call({
 String? title, String? description, String? overlayImagePath, String? overlayImageUrl
});




}
/// @nodoc
class _$MediaMetadataEntityCopyWithImpl<$Res>
    implements $MediaMetadataEntityCopyWith<$Res> {
  _$MediaMetadataEntityCopyWithImpl(this._self, this._then);

  final MediaMetadataEntity _self;
  final $Res Function(MediaMetadataEntity) _then;

/// Create a copy of MediaMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? description = freezed,Object? overlayImagePath = freezed,Object? overlayImageUrl = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,overlayImagePath: freezed == overlayImagePath ? _self.overlayImagePath : overlayImagePath // ignore: cast_nullable_to_non_nullable
as String?,overlayImageUrl: freezed == overlayImageUrl ? _self.overlayImageUrl : overlayImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaMetadataEntity].
extension MediaMetadataEntityPatterns on MediaMetadataEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaMetadataEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaMetadataEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaMetadataEntity value)  $default,){
final _that = this;
switch (_that) {
case _MediaMetadataEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaMetadataEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MediaMetadataEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? description,  String? overlayImagePath,  String? overlayImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaMetadataEntity() when $default != null:
return $default(_that.title,_that.description,_that.overlayImagePath,_that.overlayImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? description,  String? overlayImagePath,  String? overlayImageUrl)  $default,) {final _that = this;
switch (_that) {
case _MediaMetadataEntity():
return $default(_that.title,_that.description,_that.overlayImagePath,_that.overlayImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? description,  String? overlayImagePath,  String? overlayImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _MediaMetadataEntity() when $default != null:
return $default(_that.title,_that.description,_that.overlayImagePath,_that.overlayImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _MediaMetadataEntity extends MediaMetadataEntity {
  const _MediaMetadataEntity({this.title, this.description, this.overlayImagePath, this.overlayImageUrl}): super._();
  

@override final  String? title;
@override final  String? description;
@override final  String? overlayImagePath;
@override final  String? overlayImageUrl;

/// Create a copy of MediaMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaMetadataEntityCopyWith<_MediaMetadataEntity> get copyWith => __$MediaMetadataEntityCopyWithImpl<_MediaMetadataEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaMetadataEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.overlayImagePath, overlayImagePath) || other.overlayImagePath == overlayImagePath)&&(identical(other.overlayImageUrl, overlayImageUrl) || other.overlayImageUrl == overlayImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,overlayImagePath,overlayImageUrl);

@override
String toString() {
  return 'MediaMetadataEntity(title: $title, description: $description, overlayImagePath: $overlayImagePath, overlayImageUrl: $overlayImageUrl)';
}


}

/// @nodoc
abstract mixin class _$MediaMetadataEntityCopyWith<$Res> implements $MediaMetadataEntityCopyWith<$Res> {
  factory _$MediaMetadataEntityCopyWith(_MediaMetadataEntity value, $Res Function(_MediaMetadataEntity) _then) = __$MediaMetadataEntityCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? description, String? overlayImagePath, String? overlayImageUrl
});




}
/// @nodoc
class __$MediaMetadataEntityCopyWithImpl<$Res>
    implements _$MediaMetadataEntityCopyWith<$Res> {
  __$MediaMetadataEntityCopyWithImpl(this._self, this._then);

  final _MediaMetadataEntity _self;
  final $Res Function(_MediaMetadataEntity) _then;

/// Create a copy of MediaMetadataEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? description = freezed,Object? overlayImagePath = freezed,Object? overlayImageUrl = freezed,}) {
  return _then(_MediaMetadataEntity(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,overlayImagePath: freezed == overlayImagePath ? _self.overlayImagePath : overlayImagePath // ignore: cast_nullable_to_non_nullable
as String?,overlayImageUrl: freezed == overlayImageUrl ? _self.overlayImageUrl : overlayImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
