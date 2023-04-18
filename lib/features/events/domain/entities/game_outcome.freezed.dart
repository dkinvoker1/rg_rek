// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_outcome.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameOutcome {
  int get outcomeId => throw _privateConstructorUsedError;
  String get outcomeName => throw _privateConstructorUsedError;
  double get outcomeOdds => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameOutcomeCopyWith<GameOutcome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameOutcomeCopyWith<$Res> {
  factory $GameOutcomeCopyWith(
          GameOutcome value, $Res Function(GameOutcome) then) =
      _$GameOutcomeCopyWithImpl<$Res, GameOutcome>;
  @useResult
  $Res call(
      {int outcomeId, String outcomeName, double outcomeOdds, int status});
}

/// @nodoc
class _$GameOutcomeCopyWithImpl<$Res, $Val extends GameOutcome>
    implements $GameOutcomeCopyWith<$Res> {
  _$GameOutcomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeId = null,
    Object? outcomeName = null,
    Object? outcomeOdds = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      outcomeId: null == outcomeId
          ? _value.outcomeId
          : outcomeId // ignore: cast_nullable_to_non_nullable
              as int,
      outcomeName: null == outcomeName
          ? _value.outcomeName
          : outcomeName // ignore: cast_nullable_to_non_nullable
              as String,
      outcomeOdds: null == outcomeOdds
          ? _value.outcomeOdds
          : outcomeOdds // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameOutcomeCopyWith<$Res>
    implements $GameOutcomeCopyWith<$Res> {
  factory _$$_GameOutcomeCopyWith(
          _$_GameOutcome value, $Res Function(_$_GameOutcome) then) =
      __$$_GameOutcomeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int outcomeId, String outcomeName, double outcomeOdds, int status});
}

/// @nodoc
class __$$_GameOutcomeCopyWithImpl<$Res>
    extends _$GameOutcomeCopyWithImpl<$Res, _$_GameOutcome>
    implements _$$_GameOutcomeCopyWith<$Res> {
  __$$_GameOutcomeCopyWithImpl(
      _$_GameOutcome _value, $Res Function(_$_GameOutcome) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeId = null,
    Object? outcomeName = null,
    Object? outcomeOdds = null,
    Object? status = null,
  }) {
    return _then(_$_GameOutcome(
      outcomeId: null == outcomeId
          ? _value.outcomeId
          : outcomeId // ignore: cast_nullable_to_non_nullable
              as int,
      outcomeName: null == outcomeName
          ? _value.outcomeName
          : outcomeName // ignore: cast_nullable_to_non_nullable
              as String,
      outcomeOdds: null == outcomeOdds
          ? _value.outcomeOdds
          : outcomeOdds // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameOutcome extends _GameOutcome {
  _$_GameOutcome(
      {required this.outcomeId,
      required this.outcomeName,
      required this.outcomeOdds,
      required this.status})
      : super._();

  @override
  final int outcomeId;
  @override
  final String outcomeName;
  @override
  final double outcomeOdds;
  @override
  final int status;

  @override
  String toString() {
    return 'GameOutcome(outcomeId: $outcomeId, outcomeName: $outcomeName, outcomeOdds: $outcomeOdds, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameOutcome &&
            (identical(other.outcomeId, outcomeId) ||
                other.outcomeId == outcomeId) &&
            (identical(other.outcomeName, outcomeName) ||
                other.outcomeName == outcomeName) &&
            (identical(other.outcomeOdds, outcomeOdds) ||
                other.outcomeOdds == outcomeOdds) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, outcomeId, outcomeName, outcomeOdds, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameOutcomeCopyWith<_$_GameOutcome> get copyWith =>
      __$$_GameOutcomeCopyWithImpl<_$_GameOutcome>(this, _$identity);
}

abstract class _GameOutcome extends GameOutcome {
  factory _GameOutcome(
      {required final int outcomeId,
      required final String outcomeName,
      required final double outcomeOdds,
      required final int status}) = _$_GameOutcome;
  _GameOutcome._() : super._();

  @override
  int get outcomeId;
  @override
  String get outcomeName;
  @override
  double get outcomeOdds;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_GameOutcomeCopyWith<_$_GameOutcome> get copyWith =>
      throw _privateConstructorUsedError;
}
