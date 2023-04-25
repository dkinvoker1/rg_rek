// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_snapshot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventSnapshotModel _$EventSnapshotModelFromJson(Map<String, dynamic> json) {
  return _EventSnapshotModel.fromJson(json);
}

/// @nodoc
mixin _$EventSnapshotModel {
  String get area => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  int? get eventStart => throw _privateConstructorUsedError;
  EventSnapshotExtrasModel get extras => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventSnapshotModelCopyWith<EventSnapshotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSnapshotModelCopyWith<$Res> {
  factory $EventSnapshotModelCopyWith(
          EventSnapshotModel value, $Res Function(EventSnapshotModel) then) =
      _$EventSnapshotModelCopyWithImpl<$Res, EventSnapshotModel>;
  @useResult
  $Res call(
      {String area,
      String name,
      int id,
      double score,
      int? eventStart,
      EventSnapshotExtrasModel extras});

  $EventSnapshotExtrasModelCopyWith<$Res> get extras;
}

/// @nodoc
class _$EventSnapshotModelCopyWithImpl<$Res, $Val extends EventSnapshotModel>
    implements $EventSnapshotModelCopyWith<$Res> {
  _$EventSnapshotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? name = null,
    Object? id = null,
    Object? score = null,
    Object? eventStart = freezed,
    Object? extras = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      eventStart: freezed == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as int?,
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as EventSnapshotExtrasModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventSnapshotExtrasModelCopyWith<$Res> get extras {
    return $EventSnapshotExtrasModelCopyWith<$Res>(_value.extras, (value) {
      return _then(_value.copyWith(extras: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventSnapshotModelCopyWith<$Res>
    implements $EventSnapshotModelCopyWith<$Res> {
  factory _$$_EventSnapshotModelCopyWith(_$_EventSnapshotModel value,
          $Res Function(_$_EventSnapshotModel) then) =
      __$$_EventSnapshotModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String area,
      String name,
      int id,
      double score,
      int? eventStart,
      EventSnapshotExtrasModel extras});

  @override
  $EventSnapshotExtrasModelCopyWith<$Res> get extras;
}

/// @nodoc
class __$$_EventSnapshotModelCopyWithImpl<$Res>
    extends _$EventSnapshotModelCopyWithImpl<$Res, _$_EventSnapshotModel>
    implements _$$_EventSnapshotModelCopyWith<$Res> {
  __$$_EventSnapshotModelCopyWithImpl(
      _$_EventSnapshotModel _value, $Res Function(_$_EventSnapshotModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? name = null,
    Object? id = null,
    Object? score = null,
    Object? eventStart = freezed,
    Object? extras = null,
  }) {
    return _then(_$_EventSnapshotModel(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      eventStart: freezed == eventStart
          ? _value.eventStart
          : eventStart // ignore: cast_nullable_to_non_nullable
              as int?,
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as EventSnapshotExtrasModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventSnapshotModel extends _EventSnapshotModel {
  _$_EventSnapshotModel(
      {required this.area,
      required this.name,
      required this.id,
      required this.score,
      required this.eventStart,
      required this.extras})
      : super._();

  factory _$_EventSnapshotModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventSnapshotModelFromJson(json);

  @override
  final String area;
  @override
  final String name;
  @override
  final int id;
  @override
  final double score;
  @override
  final int? eventStart;
  @override
  final EventSnapshotExtrasModel extras;

  @override
  String toString() {
    return 'EventSnapshotModel(area: $area, name: $name, id: $id, score: $score, eventStart: $eventStart, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSnapshotModel &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.eventStart, eventStart) ||
                other.eventStart == eventStart) &&
            (identical(other.extras, extras) || other.extras == extras));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, area, name, id, score, eventStart, extras);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSnapshotModelCopyWith<_$_EventSnapshotModel> get copyWith =>
      __$$_EventSnapshotModelCopyWithImpl<_$_EventSnapshotModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventSnapshotModelToJson(
      this,
    );
  }
}

abstract class _EventSnapshotModel extends EventSnapshotModel {
  factory _EventSnapshotModel(
      {required final String area,
      required final String name,
      required final int id,
      required final double score,
      required final int? eventStart,
      required final EventSnapshotExtrasModel extras}) = _$_EventSnapshotModel;
  _EventSnapshotModel._() : super._();

  factory _EventSnapshotModel.fromJson(Map<String, dynamic> json) =
      _$_EventSnapshotModel.fromJson;

  @override
  String get area;
  @override
  String get name;
  @override
  int get id;
  @override
  double get score;
  @override
  int? get eventStart;
  @override
  EventSnapshotExtrasModel get extras;
  @override
  @JsonKey(ignore: true)
  _$$_EventSnapshotModelCopyWith<_$_EventSnapshotModel> get copyWith =>
      throw _privateConstructorUsedError;
}
