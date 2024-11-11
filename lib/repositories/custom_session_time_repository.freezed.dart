// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_session_time_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomSessionTimeState {
  int get value => throw _privateConstructorUsedError;

  /// Create a copy of CustomSessionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomSessionTimeStateCopyWith<CustomSessionTimeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomSessionTimeStateCopyWith<$Res> {
  factory $CustomSessionTimeStateCopyWith(CustomSessionTimeState value,
          $Res Function(CustomSessionTimeState) then) =
      _$CustomSessionTimeStateCopyWithImpl<$Res, CustomSessionTimeState>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$CustomSessionTimeStateCopyWithImpl<$Res,
        $Val extends CustomSessionTimeState>
    implements $CustomSessionTimeStateCopyWith<$Res> {
  _$CustomSessionTimeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomSessionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomSessionTimeStateImplCopyWith<$Res>
    implements $CustomSessionTimeStateCopyWith<$Res> {
  factory _$$CustomSessionTimeStateImplCopyWith(
          _$CustomSessionTimeStateImpl value,
          $Res Function(_$CustomSessionTimeStateImpl) then) =
      __$$CustomSessionTimeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$CustomSessionTimeStateImplCopyWithImpl<$Res>
    extends _$CustomSessionTimeStateCopyWithImpl<$Res,
        _$CustomSessionTimeStateImpl>
    implements _$$CustomSessionTimeStateImplCopyWith<$Res> {
  __$$CustomSessionTimeStateImplCopyWithImpl(
      _$CustomSessionTimeStateImpl _value,
      $Res Function(_$CustomSessionTimeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomSessionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$CustomSessionTimeStateImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CustomSessionTimeStateImpl extends _CustomSessionTimeState {
  const _$CustomSessionTimeStateImpl({required this.value}) : super._();

  @override
  final int value;

  @override
  String toString() {
    return 'CustomSessionTimeState(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomSessionTimeStateImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of CustomSessionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomSessionTimeStateImplCopyWith<_$CustomSessionTimeStateImpl>
      get copyWith => __$$CustomSessionTimeStateImplCopyWithImpl<
          _$CustomSessionTimeStateImpl>(this, _$identity);
}

abstract class _CustomSessionTimeState extends CustomSessionTimeState {
  const factory _CustomSessionTimeState({required final int value}) =
      _$CustomSessionTimeStateImpl;
  const _CustomSessionTimeState._() : super._();

  @override
  int get value;

  /// Create a copy of CustomSessionTimeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomSessionTimeStateImplCopyWith<_$CustomSessionTimeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
