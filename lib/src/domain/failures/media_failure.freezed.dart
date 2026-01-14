// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaFailure()';
}


}

/// @nodoc
class $MediaFailureCopyWith<$Res>  {
$MediaFailureCopyWith(MediaFailure _, $Res Function(MediaFailure) __);
}


/// Adds pattern-matching-related methods to [MediaFailure].
extension MediaFailurePatterns on MediaFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PermissionDenied value)?  permissionDenied,TResult Function( _CameraError value)?  cameraError,TResult Function( _GalleryError value)?  galleryError,TResult Function( _FilePickerError value)?  filePickerError,TResult Function( _CompressionFailed value)?  compressionFailed,TResult Function( _NoCameraAvailable value)?  noCameraAvailable,TResult Function( _VideoRecordingFailed value)?  videoRecordingFailed,TResult Function( _Unknown value)?  unknown,TResult Function( _Cancelled value)?  cancelled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PermissionDenied() when permissionDenied != null:
return permissionDenied(_that);case _CameraError() when cameraError != null:
return cameraError(_that);case _GalleryError() when galleryError != null:
return galleryError(_that);case _FilePickerError() when filePickerError != null:
return filePickerError(_that);case _CompressionFailed() when compressionFailed != null:
return compressionFailed(_that);case _NoCameraAvailable() when noCameraAvailable != null:
return noCameraAvailable(_that);case _VideoRecordingFailed() when videoRecordingFailed != null:
return videoRecordingFailed(_that);case _Unknown() when unknown != null:
return unknown(_that);case _Cancelled() when cancelled != null:
return cancelled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PermissionDenied value)  permissionDenied,required TResult Function( _CameraError value)  cameraError,required TResult Function( _GalleryError value)  galleryError,required TResult Function( _FilePickerError value)  filePickerError,required TResult Function( _CompressionFailed value)  compressionFailed,required TResult Function( _NoCameraAvailable value)  noCameraAvailable,required TResult Function( _VideoRecordingFailed value)  videoRecordingFailed,required TResult Function( _Unknown value)  unknown,required TResult Function( _Cancelled value)  cancelled,}){
final _that = this;
switch (_that) {
case _PermissionDenied():
return permissionDenied(_that);case _CameraError():
return cameraError(_that);case _GalleryError():
return galleryError(_that);case _FilePickerError():
return filePickerError(_that);case _CompressionFailed():
return compressionFailed(_that);case _NoCameraAvailable():
return noCameraAvailable(_that);case _VideoRecordingFailed():
return videoRecordingFailed(_that);case _Unknown():
return unknown(_that);case _Cancelled():
return cancelled(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PermissionDenied value)?  permissionDenied,TResult? Function( _CameraError value)?  cameraError,TResult? Function( _GalleryError value)?  galleryError,TResult? Function( _FilePickerError value)?  filePickerError,TResult? Function( _CompressionFailed value)?  compressionFailed,TResult? Function( _NoCameraAvailable value)?  noCameraAvailable,TResult? Function( _VideoRecordingFailed value)?  videoRecordingFailed,TResult? Function( _Unknown value)?  unknown,TResult? Function( _Cancelled value)?  cancelled,}){
final _that = this;
switch (_that) {
case _PermissionDenied() when permissionDenied != null:
return permissionDenied(_that);case _CameraError() when cameraError != null:
return cameraError(_that);case _GalleryError() when galleryError != null:
return galleryError(_that);case _FilePickerError() when filePickerError != null:
return filePickerError(_that);case _CompressionFailed() when compressionFailed != null:
return compressionFailed(_that);case _NoCameraAvailable() when noCameraAvailable != null:
return noCameraAvailable(_that);case _VideoRecordingFailed() when videoRecordingFailed != null:
return videoRecordingFailed(_that);case _Unknown() when unknown != null:
return unknown(_that);case _Cancelled() when cancelled != null:
return cancelled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  permissionDenied,TResult Function( String message)?  cameraError,TResult Function( String message)?  galleryError,TResult Function( String message)?  filePickerError,TResult Function( String message)?  compressionFailed,TResult Function()?  noCameraAvailable,TResult Function( String message)?  videoRecordingFailed,TResult Function( String message)?  unknown,TResult Function()?  cancelled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PermissionDenied() when permissionDenied != null:
return permissionDenied();case _CameraError() when cameraError != null:
return cameraError(_that.message);case _GalleryError() when galleryError != null:
return galleryError(_that.message);case _FilePickerError() when filePickerError != null:
return filePickerError(_that.message);case _CompressionFailed() when compressionFailed != null:
return compressionFailed(_that.message);case _NoCameraAvailable() when noCameraAvailable != null:
return noCameraAvailable();case _VideoRecordingFailed() when videoRecordingFailed != null:
return videoRecordingFailed(_that.message);case _Unknown() when unknown != null:
return unknown(_that.message);case _Cancelled() when cancelled != null:
return cancelled();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  permissionDenied,required TResult Function( String message)  cameraError,required TResult Function( String message)  galleryError,required TResult Function( String message)  filePickerError,required TResult Function( String message)  compressionFailed,required TResult Function()  noCameraAvailable,required TResult Function( String message)  videoRecordingFailed,required TResult Function( String message)  unknown,required TResult Function()  cancelled,}) {final _that = this;
switch (_that) {
case _PermissionDenied():
return permissionDenied();case _CameraError():
return cameraError(_that.message);case _GalleryError():
return galleryError(_that.message);case _FilePickerError():
return filePickerError(_that.message);case _CompressionFailed():
return compressionFailed(_that.message);case _NoCameraAvailable():
return noCameraAvailable();case _VideoRecordingFailed():
return videoRecordingFailed(_that.message);case _Unknown():
return unknown(_that.message);case _Cancelled():
return cancelled();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  permissionDenied,TResult? Function( String message)?  cameraError,TResult? Function( String message)?  galleryError,TResult? Function( String message)?  filePickerError,TResult? Function( String message)?  compressionFailed,TResult? Function()?  noCameraAvailable,TResult? Function( String message)?  videoRecordingFailed,TResult? Function( String message)?  unknown,TResult? Function()?  cancelled,}) {final _that = this;
switch (_that) {
case _PermissionDenied() when permissionDenied != null:
return permissionDenied();case _CameraError() when cameraError != null:
return cameraError(_that.message);case _GalleryError() when galleryError != null:
return galleryError(_that.message);case _FilePickerError() when filePickerError != null:
return filePickerError(_that.message);case _CompressionFailed() when compressionFailed != null:
return compressionFailed(_that.message);case _NoCameraAvailable() when noCameraAvailable != null:
return noCameraAvailable();case _VideoRecordingFailed() when videoRecordingFailed != null:
return videoRecordingFailed(_that.message);case _Unknown() when unknown != null:
return unknown(_that.message);case _Cancelled() when cancelled != null:
return cancelled();case _:
  return null;

}
}

}

/// @nodoc


class _PermissionDenied implements MediaFailure {
  const _PermissionDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PermissionDenied);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaFailure.permissionDenied()';
}


}




/// @nodoc


class _CameraError implements MediaFailure {
  const _CameraError(this.message);
  

 final  String message;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CameraErrorCopyWith<_CameraError> get copyWith => __$CameraErrorCopyWithImpl<_CameraError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CameraError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MediaFailure.cameraError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CameraErrorCopyWith<$Res> implements $MediaFailureCopyWith<$Res> {
  factory _$CameraErrorCopyWith(_CameraError value, $Res Function(_CameraError) _then) = __$CameraErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CameraErrorCopyWithImpl<$Res>
    implements _$CameraErrorCopyWith<$Res> {
  __$CameraErrorCopyWithImpl(this._self, this._then);

  final _CameraError _self;
  final $Res Function(_CameraError) _then;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CameraError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GalleryError implements MediaFailure {
  const _GalleryError(this.message);
  

 final  String message;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GalleryErrorCopyWith<_GalleryError> get copyWith => __$GalleryErrorCopyWithImpl<_GalleryError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GalleryError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MediaFailure.galleryError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GalleryErrorCopyWith<$Res> implements $MediaFailureCopyWith<$Res> {
  factory _$GalleryErrorCopyWith(_GalleryError value, $Res Function(_GalleryError) _then) = __$GalleryErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GalleryErrorCopyWithImpl<$Res>
    implements _$GalleryErrorCopyWith<$Res> {
  __$GalleryErrorCopyWithImpl(this._self, this._then);

  final _GalleryError _self;
  final $Res Function(_GalleryError) _then;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GalleryError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FilePickerError implements MediaFailure {
  const _FilePickerError(this.message);
  

 final  String message;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilePickerErrorCopyWith<_FilePickerError> get copyWith => __$FilePickerErrorCopyWithImpl<_FilePickerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilePickerError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MediaFailure.filePickerError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FilePickerErrorCopyWith<$Res> implements $MediaFailureCopyWith<$Res> {
  factory _$FilePickerErrorCopyWith(_FilePickerError value, $Res Function(_FilePickerError) _then) = __$FilePickerErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FilePickerErrorCopyWithImpl<$Res>
    implements _$FilePickerErrorCopyWith<$Res> {
  __$FilePickerErrorCopyWithImpl(this._self, this._then);

  final _FilePickerError _self;
  final $Res Function(_FilePickerError) _then;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_FilePickerError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CompressionFailed implements MediaFailure {
  const _CompressionFailed(this.message);
  

 final  String message;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompressionFailedCopyWith<_CompressionFailed> get copyWith => __$CompressionFailedCopyWithImpl<_CompressionFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompressionFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MediaFailure.compressionFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CompressionFailedCopyWith<$Res> implements $MediaFailureCopyWith<$Res> {
  factory _$CompressionFailedCopyWith(_CompressionFailed value, $Res Function(_CompressionFailed) _then) = __$CompressionFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CompressionFailedCopyWithImpl<$Res>
    implements _$CompressionFailedCopyWith<$Res> {
  __$CompressionFailedCopyWithImpl(this._self, this._then);

  final _CompressionFailed _self;
  final $Res Function(_CompressionFailed) _then;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CompressionFailed(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NoCameraAvailable implements MediaFailure {
  const _NoCameraAvailable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoCameraAvailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaFailure.noCameraAvailable()';
}


}




/// @nodoc


class _VideoRecordingFailed implements MediaFailure {
  const _VideoRecordingFailed(this.message);
  

 final  String message;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoRecordingFailedCopyWith<_VideoRecordingFailed> get copyWith => __$VideoRecordingFailedCopyWithImpl<_VideoRecordingFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoRecordingFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MediaFailure.videoRecordingFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$VideoRecordingFailedCopyWith<$Res> implements $MediaFailureCopyWith<$Res> {
  factory _$VideoRecordingFailedCopyWith(_VideoRecordingFailed value, $Res Function(_VideoRecordingFailed) _then) = __$VideoRecordingFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$VideoRecordingFailedCopyWithImpl<$Res>
    implements _$VideoRecordingFailedCopyWith<$Res> {
  __$VideoRecordingFailedCopyWithImpl(this._self, this._then);

  final _VideoRecordingFailed _self;
  final $Res Function(_VideoRecordingFailed) _then;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_VideoRecordingFailed(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Unknown implements MediaFailure {
  const _Unknown(this.message);
  

 final  String message;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnknownCopyWith<_Unknown> get copyWith => __$UnknownCopyWithImpl<_Unknown>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unknown&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MediaFailure.unknown(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UnknownCopyWith<$Res> implements $MediaFailureCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) _then) = __$UnknownCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UnknownCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(this._self, this._then);

  final _Unknown _self;
  final $Res Function(_Unknown) _then;

/// Create a copy of MediaFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Unknown(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Cancelled implements MediaFailure {
  const _Cancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaFailure.cancelled()';
}


}




// dart format on
