// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_metadata_strategy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CameraMetadataStrategy {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraMetadataStrategy);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CameraMetadataStrategy()';
}


}

/// @nodoc
class $CameraMetadataStrategyCopyWith<$Res>  {
$CameraMetadataStrategyCopyWith(CameraMetadataStrategy _, $Res Function(CameraMetadataStrategy) __);
}


/// Adds pattern-matching-related methods to [CameraMetadataStrategy].
extension CameraMetadataStrategyPatterns on CameraMetadataStrategy {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SelectableMetadataStrategy value)?  selectable,TResult Function( SequentialMetadataStrategy value)?  sequential,TResult Function( SharedMetadataStrategy value)?  shared,TResult Function( HybridMetadataStrategy value)?  hybrid,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SelectableMetadataStrategy() when selectable != null:
return selectable(_that);case SequentialMetadataStrategy() when sequential != null:
return sequential(_that);case SharedMetadataStrategy() when shared != null:
return shared(_that);case HybridMetadataStrategy() when hybrid != null:
return hybrid(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SelectableMetadataStrategy value)  selectable,required TResult Function( SequentialMetadataStrategy value)  sequential,required TResult Function( SharedMetadataStrategy value)  shared,required TResult Function( HybridMetadataStrategy value)  hybrid,}){
final _that = this;
switch (_that) {
case SelectableMetadataStrategy():
return selectable(_that);case SequentialMetadataStrategy():
return sequential(_that);case SharedMetadataStrategy():
return shared(_that);case HybridMetadataStrategy():
return hybrid(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SelectableMetadataStrategy value)?  selectable,TResult? Function( SequentialMetadataStrategy value)?  sequential,TResult? Function( SharedMetadataStrategy value)?  shared,TResult? Function( HybridMetadataStrategy value)?  hybrid,}){
final _that = this;
switch (_that) {
case SelectableMetadataStrategy() when selectable != null:
return selectable(_that);case SequentialMetadataStrategy() when sequential != null:
return sequential(_that);case SharedMetadataStrategy() when shared != null:
return shared(_that);case HybridMetadataStrategy() when hybrid != null:
return hybrid(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<String> labels,  MediaMetadataEntity Function(String label, int index)? metadataBuilder)?  selectable,TResult Function( List<MediaMetadataEntity> sequence)?  sequential,TResult Function( MediaMetadataEntity metadata)?  shared,TResult Function( List<MediaMetadataEntity> sequence,  MediaMetadataEntity fallback)?  hybrid,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SelectableMetadataStrategy() when selectable != null:
return selectable(_that.labels,_that.metadataBuilder);case SequentialMetadataStrategy() when sequential != null:
return sequential(_that.sequence);case SharedMetadataStrategy() when shared != null:
return shared(_that.metadata);case HybridMetadataStrategy() when hybrid != null:
return hybrid(_that.sequence,_that.fallback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<String> labels,  MediaMetadataEntity Function(String label, int index)? metadataBuilder)  selectable,required TResult Function( List<MediaMetadataEntity> sequence)  sequential,required TResult Function( MediaMetadataEntity metadata)  shared,required TResult Function( List<MediaMetadataEntity> sequence,  MediaMetadataEntity fallback)  hybrid,}) {final _that = this;
switch (_that) {
case SelectableMetadataStrategy():
return selectable(_that.labels,_that.metadataBuilder);case SequentialMetadataStrategy():
return sequential(_that.sequence);case SharedMetadataStrategy():
return shared(_that.metadata);case HybridMetadataStrategy():
return hybrid(_that.sequence,_that.fallback);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<String> labels,  MediaMetadataEntity Function(String label, int index)? metadataBuilder)?  selectable,TResult? Function( List<MediaMetadataEntity> sequence)?  sequential,TResult? Function( MediaMetadataEntity metadata)?  shared,TResult? Function( List<MediaMetadataEntity> sequence,  MediaMetadataEntity fallback)?  hybrid,}) {final _that = this;
switch (_that) {
case SelectableMetadataStrategy() when selectable != null:
return selectable(_that.labels,_that.metadataBuilder);case SequentialMetadataStrategy() when sequential != null:
return sequential(_that.sequence);case SharedMetadataStrategy() when shared != null:
return shared(_that.metadata);case HybridMetadataStrategy() when hybrid != null:
return hybrid(_that.sequence,_that.fallback);case _:
  return null;

}
}

}

/// @nodoc


class SelectableMetadataStrategy implements CameraMetadataStrategy {
  const SelectableMetadataStrategy({required final  List<String> labels, this.metadataBuilder}): _labels = labels;
  

 final  List<String> _labels;
 List<String> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}

 final  MediaMetadataEntity Function(String label, int index)? metadataBuilder;

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectableMetadataStrategyCopyWith<SelectableMetadataStrategy> get copyWith => _$SelectableMetadataStrategyCopyWithImpl<SelectableMetadataStrategy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectableMetadataStrategy&&const DeepCollectionEquality().equals(other._labels, _labels)&&(identical(other.metadataBuilder, metadataBuilder) || other.metadataBuilder == metadataBuilder));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_labels),metadataBuilder);

@override
String toString() {
  return 'CameraMetadataStrategy.selectable(labels: $labels, metadataBuilder: $metadataBuilder)';
}


}

/// @nodoc
abstract mixin class $SelectableMetadataStrategyCopyWith<$Res> implements $CameraMetadataStrategyCopyWith<$Res> {
  factory $SelectableMetadataStrategyCopyWith(SelectableMetadataStrategy value, $Res Function(SelectableMetadataStrategy) _then) = _$SelectableMetadataStrategyCopyWithImpl;
@useResult
$Res call({
 List<String> labels, MediaMetadataEntity Function(String label, int index)? metadataBuilder
});




}
/// @nodoc
class _$SelectableMetadataStrategyCopyWithImpl<$Res>
    implements $SelectableMetadataStrategyCopyWith<$Res> {
  _$SelectableMetadataStrategyCopyWithImpl(this._self, this._then);

  final SelectableMetadataStrategy _self;
  final $Res Function(SelectableMetadataStrategy) _then;

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? labels = null,Object? metadataBuilder = freezed,}) {
  return _then(SelectableMetadataStrategy(
labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,metadataBuilder: freezed == metadataBuilder ? _self.metadataBuilder : metadataBuilder // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity Function(String label, int index)?,
  ));
}


}

/// @nodoc


class SequentialMetadataStrategy implements CameraMetadataStrategy {
  const SequentialMetadataStrategy({required final  List<MediaMetadataEntity> sequence}): _sequence = sequence;
  

 final  List<MediaMetadataEntity> _sequence;
 List<MediaMetadataEntity> get sequence {
  if (_sequence is EqualUnmodifiableListView) return _sequence;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sequence);
}


/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SequentialMetadataStrategyCopyWith<SequentialMetadataStrategy> get copyWith => _$SequentialMetadataStrategyCopyWithImpl<SequentialMetadataStrategy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SequentialMetadataStrategy&&const DeepCollectionEquality().equals(other._sequence, _sequence));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sequence));

@override
String toString() {
  return 'CameraMetadataStrategy.sequential(sequence: $sequence)';
}


}

/// @nodoc
abstract mixin class $SequentialMetadataStrategyCopyWith<$Res> implements $CameraMetadataStrategyCopyWith<$Res> {
  factory $SequentialMetadataStrategyCopyWith(SequentialMetadataStrategy value, $Res Function(SequentialMetadataStrategy) _then) = _$SequentialMetadataStrategyCopyWithImpl;
@useResult
$Res call({
 List<MediaMetadataEntity> sequence
});




}
/// @nodoc
class _$SequentialMetadataStrategyCopyWithImpl<$Res>
    implements $SequentialMetadataStrategyCopyWith<$Res> {
  _$SequentialMetadataStrategyCopyWithImpl(this._self, this._then);

  final SequentialMetadataStrategy _self;
  final $Res Function(SequentialMetadataStrategy) _then;

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sequence = null,}) {
  return _then(SequentialMetadataStrategy(
sequence: null == sequence ? _self._sequence : sequence // ignore: cast_nullable_to_non_nullable
as List<MediaMetadataEntity>,
  ));
}


}

/// @nodoc


class SharedMetadataStrategy implements CameraMetadataStrategy {
  const SharedMetadataStrategy({required this.metadata});
  

 final  MediaMetadataEntity metadata;

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharedMetadataStrategyCopyWith<SharedMetadataStrategy> get copyWith => _$SharedMetadataStrategyCopyWithImpl<SharedMetadataStrategy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharedMetadataStrategy&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,metadata);

@override
String toString() {
  return 'CameraMetadataStrategy.shared(metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $SharedMetadataStrategyCopyWith<$Res> implements $CameraMetadataStrategyCopyWith<$Res> {
  factory $SharedMetadataStrategyCopyWith(SharedMetadataStrategy value, $Res Function(SharedMetadataStrategy) _then) = _$SharedMetadataStrategyCopyWithImpl;
@useResult
$Res call({
 MediaMetadataEntity metadata
});


$MediaMetadataEntityCopyWith<$Res> get metadata;

}
/// @nodoc
class _$SharedMetadataStrategyCopyWithImpl<$Res>
    implements $SharedMetadataStrategyCopyWith<$Res> {
  _$SharedMetadataStrategyCopyWithImpl(this._self, this._then);

  final SharedMetadataStrategy _self;
  final $Res Function(SharedMetadataStrategy) _then;

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? metadata = null,}) {
  return _then(SharedMetadataStrategy(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity,
  ));
}

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res> get metadata {
  
  return $MediaMetadataEntityCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

/// @nodoc


class HybridMetadataStrategy implements CameraMetadataStrategy {
  const HybridMetadataStrategy({required final  List<MediaMetadataEntity> sequence, required this.fallback}): _sequence = sequence;
  

 final  List<MediaMetadataEntity> _sequence;
 List<MediaMetadataEntity> get sequence {
  if (_sequence is EqualUnmodifiableListView) return _sequence;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sequence);
}

 final  MediaMetadataEntity fallback;

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HybridMetadataStrategyCopyWith<HybridMetadataStrategy> get copyWith => _$HybridMetadataStrategyCopyWithImpl<HybridMetadataStrategy>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HybridMetadataStrategy&&const DeepCollectionEquality().equals(other._sequence, _sequence)&&(identical(other.fallback, fallback) || other.fallback == fallback));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sequence),fallback);

@override
String toString() {
  return 'CameraMetadataStrategy.hybrid(sequence: $sequence, fallback: $fallback)';
}


}

/// @nodoc
abstract mixin class $HybridMetadataStrategyCopyWith<$Res> implements $CameraMetadataStrategyCopyWith<$Res> {
  factory $HybridMetadataStrategyCopyWith(HybridMetadataStrategy value, $Res Function(HybridMetadataStrategy) _then) = _$HybridMetadataStrategyCopyWithImpl;
@useResult
$Res call({
 List<MediaMetadataEntity> sequence, MediaMetadataEntity fallback
});


$MediaMetadataEntityCopyWith<$Res> get fallback;

}
/// @nodoc
class _$HybridMetadataStrategyCopyWithImpl<$Res>
    implements $HybridMetadataStrategyCopyWith<$Res> {
  _$HybridMetadataStrategyCopyWithImpl(this._self, this._then);

  final HybridMetadataStrategy _self;
  final $Res Function(HybridMetadataStrategy) _then;

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sequence = null,Object? fallback = null,}) {
  return _then(HybridMetadataStrategy(
sequence: null == sequence ? _self._sequence : sequence // ignore: cast_nullable_to_non_nullable
as List<MediaMetadataEntity>,fallback: null == fallback ? _self.fallback : fallback // ignore: cast_nullable_to_non_nullable
as MediaMetadataEntity,
  ));
}

/// Create a copy of CameraMetadataStrategy
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaMetadataEntityCopyWith<$Res> get fallback {
  
  return $MediaMetadataEntityCopyWith<$Res>(_self.fallback, (value) {
    return _then(_self.copyWith(fallback: value));
  });
}
}

// dart format on
