// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraState {

 PermissionStatus get permissionStatus; List<MediaEntity> get capturedMedias; bool get isCapturing; bool get isRecording; bool get showCameraRoll; CaptureMode get captureMode; MediaMetadataEntity? get currentMetadata; int? get recordingDurationSeconds;
/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraStateCopyWith<CameraState> get copyWith => _$CameraStateCopyWithImpl<CameraState>(this as CameraState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraState&&(identical(other.permissionStatus, permissionStatus) || other.permissionStatus == permissionStatus)&&const DeepCollectionEquality().equals(other.capturedMedias, capturedMedias)&&(identical(other.isCapturing, isCapturing) || other.isCapturing == isCapturing)&&(identical(other.isRecording, isRecording) || other.isRecording == isRecording)&&(identical(other.showCameraRoll, showCameraRoll) || other.showCameraRoll == showCameraRoll)&&(identical(other.captureMode, captureMode) || other.captureMode == captureMode)&&(identical(other.currentMetadata, currentMetadata) || other.currentMetadata == currentMetadata)&&(identical(other.recordingDurationSeconds, recordingDurationSeconds) || other.recordingDurationSeconds == recordingDurationSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,permissionStatus,const DeepCollectionEquality().hash(capturedMedias),isCapturing,isRecording,showCameraRoll,captureMode,currentMetadata,recordingDurationSeconds);

@override
String toString() {
  return 'CameraState(permissionStatus: $permissionStatus, capturedMedias: $capturedMedias, isCapturing: $isCapturing, isRecording: $isRecording, showCameraRoll: $showCameraRoll, captureMode: $captureMode, currentMetadata: $currentMetadata, recordingDurationSeconds: $recordingDurationSeconds)';
}


}

/// @nodoc
abstract mixin class $CameraStateCopyWith<$Res>  {
  factory $CameraStateCopyWith(CameraState value, $Res Function(CameraState) _then) = _$CameraStateCopyWithImpl;
@useResult
$Res call({
 PermissionStatus permissionStatus, List<MediaEntity> capturedMedias, bool isCapturing, bool isRecording, bool showCameraRoll, CaptureMode captureMode, MediaMetadataEntity? currentMetadata, int? recordingDurationSeconds
});


$MediaMetadataEntityCopyWith<$Res>? get currentMetadata;

}
/// @nodoc
class _$CameraStateCopyWithImpl<$Res>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._self, this._then);

  final CameraState _self;
  final $Res Function(CameraState) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? permissionStatus = null,Object? capturedMedias = null,Object? isCapturing = null,Object? isRecording = null,Object? showCameraRoll = null,Object? captureMode = null,Object? currentMetadata = freezed,Object? recordingDurationSeconds = freezed,}) {
  return _then(_self.copyWith(
permissionStatus: null == permissionStatus ? _self.permissionStatus : permissionStatus // ignore: cast_nullable_to_non_nullable
as PermissionStatus,capturedMedias: null == capturedMedias ? _self.capturedMedias : capturedMedias // ignore: cast_nullable_to_non_nullable
as List<MediaEntity>,isCapturing: null == isCapturing ? _self.isCapturing : isCapturing // ignore: cast_nullable_to_non_nullable
as bool,isRecording: null == isRecording ? _self.isRecording : isRecording // ignore: cast_nullable_to_non_nullable
as bool,showCameraRoll: null == showCameraRoll ? _self.showCameraRoll : showCameraRoll // ignore: cast_nullable_to_non_nullable
as bool,captureMode: null == captureMode ? _self.captureMode : captureMode // ignore: cast_nullable_to_non_nullable
as CaptureMode,currentMetadata: freezed == currentMetadata ? _self.currentMetadata : currentMetadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity?,recordingDurationSeconds: freezed == recordingDurationSeconds ? _self.recordingDurationSeconds : recordingDurationSeconds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res>? get currentMetadata {
    if (_self.currentMetadata == null) {
    return null;
  }

  return $MediaMetadataEntityCopyWith<$Res>(_self.currentMetadata!, (value) {
    return _then(_self.copyWith(currentMetadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [CameraState].
extension CameraStatePatterns on CameraState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CameraState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CameraState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CameraState value)  $default,){
final _that = this;
switch (_that) {
case _CameraState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CameraState value)?  $default,){
final _that = this;
switch (_that) {
case _CameraState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PermissionStatus permissionStatus,  List<MediaEntity> capturedMedias,  bool isCapturing,  bool isRecording,  bool showCameraRoll,  CaptureMode captureMode,  MediaMetadataEntity? currentMetadata,  int? recordingDurationSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CameraState() when $default != null:
return $default(_that.permissionStatus,_that.capturedMedias,_that.isCapturing,_that.isRecording,_that.showCameraRoll,_that.captureMode,_that.currentMetadata,_that.recordingDurationSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PermissionStatus permissionStatus,  List<MediaEntity> capturedMedias,  bool isCapturing,  bool isRecording,  bool showCameraRoll,  CaptureMode captureMode,  MediaMetadataEntity? currentMetadata,  int? recordingDurationSeconds)  $default,) {final _that = this;
switch (_that) {
case _CameraState():
return $default(_that.permissionStatus,_that.capturedMedias,_that.isCapturing,_that.isRecording,_that.showCameraRoll,_that.captureMode,_that.currentMetadata,_that.recordingDurationSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PermissionStatus permissionStatus,  List<MediaEntity> capturedMedias,  bool isCapturing,  bool isRecording,  bool showCameraRoll,  CaptureMode captureMode,  MediaMetadataEntity? currentMetadata,  int? recordingDurationSeconds)?  $default,) {final _that = this;
switch (_that) {
case _CameraState() when $default != null:
return $default(_that.permissionStatus,_that.capturedMedias,_that.isCapturing,_that.isRecording,_that.showCameraRoll,_that.captureMode,_that.currentMetadata,_that.recordingDurationSeconds);case _:
  return null;

}
}

}

/// @nodoc


class _CameraState extends CameraState {
   _CameraState({required this.permissionStatus, required final  List<MediaEntity> capturedMedias, required this.isCapturing, required this.isRecording, required this.showCameraRoll, required this.captureMode, this.currentMetadata, this.recordingDurationSeconds}): _capturedMedias = capturedMedias,super._();
  

@override final  PermissionStatus permissionStatus;
 final  List<MediaEntity> _capturedMedias;
@override List<MediaEntity> get capturedMedias {
  if (_capturedMedias is EqualUnmodifiableListView) return _capturedMedias;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_capturedMedias);
}

@override final  bool isCapturing;
@override final  bool isRecording;
@override final  bool showCameraRoll;
@override final  CaptureMode captureMode;
@override final  MediaMetadataEntity? currentMetadata;
@override final  int? recordingDurationSeconds;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CameraStateCopyWith<_CameraState> get copyWith => __$CameraStateCopyWithImpl<_CameraState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CameraState&&(identical(other.permissionStatus, permissionStatus) || other.permissionStatus == permissionStatus)&&const DeepCollectionEquality().equals(other._capturedMedias, _capturedMedias)&&(identical(other.isCapturing, isCapturing) || other.isCapturing == isCapturing)&&(identical(other.isRecording, isRecording) || other.isRecording == isRecording)&&(identical(other.showCameraRoll, showCameraRoll) || other.showCameraRoll == showCameraRoll)&&(identical(other.captureMode, captureMode) || other.captureMode == captureMode)&&(identical(other.currentMetadata, currentMetadata) || other.currentMetadata == currentMetadata)&&(identical(other.recordingDurationSeconds, recordingDurationSeconds) || other.recordingDurationSeconds == recordingDurationSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,permissionStatus,const DeepCollectionEquality().hash(_capturedMedias),isCapturing,isRecording,showCameraRoll,captureMode,currentMetadata,recordingDurationSeconds);

@override
String toString() {
  return 'CameraState(permissionStatus: $permissionStatus, capturedMedias: $capturedMedias, isCapturing: $isCapturing, isRecording: $isRecording, showCameraRoll: $showCameraRoll, captureMode: $captureMode, currentMetadata: $currentMetadata, recordingDurationSeconds: $recordingDurationSeconds)';
}


}

/// @nodoc
abstract mixin class _$CameraStateCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateCopyWith(_CameraState value, $Res Function(_CameraState) _then) = __$CameraStateCopyWithImpl;
@override @useResult
$Res call({
 PermissionStatus permissionStatus, List<MediaEntity> capturedMedias, bool isCapturing, bool isRecording, bool showCameraRoll, CaptureMode captureMode, MediaMetadataEntity? currentMetadata, int? recordingDurationSeconds
});


@override $MediaMetadataEntityCopyWith<$Res>? get currentMetadata;

}
/// @nodoc
class __$CameraStateCopyWithImpl<$Res>
    implements _$CameraStateCopyWith<$Res> {
  __$CameraStateCopyWithImpl(this._self, this._then);

  final _CameraState _self;
  final $Res Function(_CameraState) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? permissionStatus = null,Object? capturedMedias = null,Object? isCapturing = null,Object? isRecording = null,Object? showCameraRoll = null,Object? captureMode = null,Object? currentMetadata = freezed,Object? recordingDurationSeconds = freezed,}) {
  return _then(_CameraState(
permissionStatus: null == permissionStatus ? _self.permissionStatus : permissionStatus // ignore: cast_nullable_to_non_nullable
as PermissionStatus,capturedMedias: null == capturedMedias ? _self._capturedMedias : capturedMedias // ignore: cast_nullable_to_non_nullable
as List<MediaEntity>,isCapturing: null == isCapturing ? _self.isCapturing : isCapturing // ignore: cast_nullable_to_non_nullable
as bool,isRecording: null == isRecording ? _self.isRecording : isRecording // ignore: cast_nullable_to_non_nullable
as bool,showCameraRoll: null == showCameraRoll ? _self.showCameraRoll : showCameraRoll // ignore: cast_nullable_to_non_nullable
as bool,captureMode: null == captureMode ? _self.captureMode : captureMode // ignore: cast_nullable_to_non_nullable
as CaptureMode,currentMetadata: freezed == currentMetadata ? _self.currentMetadata : currentMetadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity?,recordingDurationSeconds: freezed == recordingDurationSeconds ? _self.recordingDurationSeconds : recordingDurationSeconds // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res>? get currentMetadata {
    if (_self.currentMetadata == null) {
    return null;
  }

  return $MediaMetadataEntityCopyWith<$Res>(_self.currentMetadata!, (value) {
    return _then(_self.copyWith(currentMetadata: value));
  });
}
}

// dart format on
