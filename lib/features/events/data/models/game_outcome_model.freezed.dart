// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_outcome_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameOutcomeModel _$GameOutcomeModelFromJson(Map<String, dynamic> json) {
  return _GameOutcomeModel.fromJson(json);
}

/// @nodoc
mixin _$GameOutcomeModel {
  int get outcomeId => throw _privateConstructorUsedError;
  String get outcomeName => throw _privateConstructorUsedError;
  double get outcomeOdds => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameOutcomeModelCopyWith<GameOutcomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameOutcomeModelCopyWith<$Res> {
  factory $GameOutcomeModelCopyWith(
          GameOutcomeModel value, $Res Function(GameOutcomeModel) then) =
      _$GameOutcomeModelCopyWithImpl<$Res, GameOutcomeModel>;
  @useResult
  $Res call(
      {int outcomeId, String outcomeName, double outcomeOdds, int status});
}

/// @nodoc
class _$GameOutcomeModelCopyWithImpl<$Res, $Val extends GameOutcomeModel>
    implements $GameOutcomeModelCopyWith<$Res> {
  _$GameOutcomeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_GameOutcomeModelCopyWith<$Res>
    implements $GameOutcomeModelCopyWith<$Res> {
  factory _$$_GameOutcomeModelCopyWith(
          _$_GameOutcomeModel value, $Res Function(_$_GameOutcomeModel) then) =
      __$$_GameOutcomeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int outcomeId, String outcomeName, double outcomeOdds, int status});
}

/// @nodoc
class __$$_GameOutcomeModelCopyWithImpl<$Res>
    extends _$GameOutcomeModelCopyWithImpl<$Res, _$_GameOutcomeModel>
    implements _$$_GameOutcomeModelCopyWith<$Res> {
  __$$_GameOutcomeModelCopyWithImpl(
      _$_GameOutcomeModel _value, $Res Function(_$_GameOutcomeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcomeId = null,
    Object? outcomeName = null,
    Object? outcomeOdds = null,
    Object? status = null,
  }) {
    return _then(_$_GameOutcomeModel(
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
@JsonSerializable()
class _$_GameOutcomeModel implements _GameOutcomeModel {
  _$_GameOutcomeModel(
      {required this.outcomeId,
      required this.outcomeName,
      required this.outcomeOdds,
      required this.status});

  factory _$_GameOutcomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_GameOutcomeModelFromJson(json);

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
    return 'GameOutcomeModel(outcomeId: $outcomeId, outcomeName: $outcomeName, outcomeOdds: $outcomeOdds, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameOutcomeModel &&
            (identical(other.outcomeId, outcomeId) ||
                other.outcomeId == outcomeId) &&
            (identical(other.outcomeName, outcomeName) ||
                other.outcomeName == outcomeName) &&
            (identical(other.outcomeOdds, outcomeOdds) ||
                other.outcomeOdds == outcomeOdds) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, outcomeId, outcomeName, outcomeOdds, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameOutcomeModelCopyWith<_$_GameOutcomeModel> get copyWith =>
      __$$_GameOutcomeModelCopyWithImpl<_$_GameOutcomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameOutcomeModelToJson(
      this,
    );
  }
}

abstract class _GameOutcomeModel implements GameOutcomeModel {
  factory _GameOutcomeModel(
      {required final int outcomeId,
      required final String outcomeName,
      required final double outcomeOdds,
      required final int status}) = _$_GameOutcomeModel;

  factory _GameOutcomeModel.fromJson(Map<String, dynamic> json) =
      _$_GameOutcomeModel.fromJson;

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
  _$$_GameOutcomeModelCopyWith<_$_GameOutcomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
