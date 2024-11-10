// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countdown_timer_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountdownTimerState {
  bool get isRunning => throw _privateConstructorUsedError;
  Duration get interval => throw _privateConstructorUsedError;
  Duration get current => throw _privateConstructorUsedError;
  Timer? get timer => throw _privateConstructorUsedError;

  /// Create a copy of CountdownTimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountdownTimerStateCopyWith<CountdownTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountdownTimerStateCopyWith<$Res> {
  factory $CountdownTimerStateCopyWith(
          CountdownTimerState value, $Res Function(CountdownTimerState) then) =
      _$CountdownTimerStateCopyWithImpl<$Res, CountdownTimerState>;
  @useResult
  $Res call(
      {bool isRunning, Duration interval, Duration current, Timer? timer});
}

/// @nodoc
class _$CountdownTimerStateCopyWithImpl<$Res, $Val extends CountdownTimerState>
    implements $CountdownTimerStateCopyWith<$Res> {
  _$CountdownTimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountdownTimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRunning = null,
    Object? interval = null,
    Object? current = null,
    Object? timer = freezed,
  }) {
    return _then(_value.copyWith(
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as Duration,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Duration,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountdownTimerStateImplCopyWith<$Res>
    implements $CountdownTimerStateCopyWith<$Res> {
  factory _$$CountdownTimerStateImplCopyWith(_$CountdownTimerStateImpl value,
          $Res Function(_$CountdownTimerStateImpl) then) =
      __$$CountdownTimerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isRunning, Duration interval, Duration current, Timer? timer});
}

/// @nodoc
class __$$CountdownTimerStateImplCopyWithImpl<$Res>
    extends _$CountdownTimerStateCopyWithImpl<$Res, _$CountdownTimerStateImpl>
    implements _$$CountdownTimerStateImplCopyWith<$Res> {
  __$$CountdownTimerStateImplCopyWithImpl(_$CountdownTimerStateImpl _value,
      $Res Function(_$CountdownTimerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountdownTimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRunning = null,
    Object? interval = null,
    Object? current = null,
    Object? timer = freezed,
  }) {
    return _then(_$CountdownTimerStateImpl(
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as Duration,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as Duration,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Timer?,
    ));
  }
}

/// @nodoc

class _$CountdownTimerStateImpl extends _CountdownTimerState {
  const _$CountdownTimerStateImpl(
      {required this.isRunning,
      required this.interval,
      required this.current,
      required this.timer})
      : super._();

  @override
  final bool isRunning;
  @override
  final Duration interval;
  @override
  final Duration current;
  @override
  final Timer? timer;

  @override
  String toString() {
    return 'CountdownTimerState(isRunning: $isRunning, interval: $interval, current: $current, timer: $timer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountdownTimerStateImpl &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.timer, timer) || other.timer == timer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isRunning, interval, current, timer);

  /// Create a copy of CountdownTimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountdownTimerStateImplCopyWith<_$CountdownTimerStateImpl> get copyWith =>
      __$$CountdownTimerStateImplCopyWithImpl<_$CountdownTimerStateImpl>(
          this, _$identity);
}

abstract class _CountdownTimerState extends CountdownTimerState {
  const factory _CountdownTimerState(
      {required final bool isRunning,
      required final Duration interval,
      required final Duration current,
      required final Timer? timer}) = _$CountdownTimerStateImpl;
  const _CountdownTimerState._() : super._();

  @override
  bool get isRunning;
  @override
  Duration get interval;
  @override
  Duration get current;
  @override
  Timer? get timer;

  /// Create a copy of CountdownTimerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountdownTimerStateImplCopyWith<_$CountdownTimerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
