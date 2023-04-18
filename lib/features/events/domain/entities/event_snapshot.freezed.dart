// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventSnapshot {
  int get area => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  EventSnapshotExtras get extras => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventSnapshotCopyWith<EventSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSnapshotCopyWith<$Res> {
  factory $EventSnapshotCopyWith(
          EventSnapshot value, $Res Function(EventSnapshot) then) =
      _$EventSnapshotCopyWithImpl<$Res, EventSnapshot>;
  @useResult
  $Res call(
      {int area,
      String name,
      int id,
      double score,
      EventSnapshotExtras extras});

  $EventSnapshotExtrasCopyWith<$Res> get extras;
}

/// @nodoc
class _$EventSnapshotCopyWithImpl<$Res, $Val extends EventSnapshot>
    implements $EventSnapshotCopyWith<$Res> {
  _$EventSnapshotCopyWithImpl(this._value, this._then);

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
    Object? extras = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int,
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
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as EventSnapshotExtras,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventSnapshotExtrasCopyWith<$Res> get extras {
    return $EventSnapshotExtrasCopyWith<$Res>(_value.extras, (value) {
      return _then(_value.copyWith(extras: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventSnapshotCopyWith<$Res>
    implements $EventSnapshotCopyWith<$Res> {
  factory _$$_EventSnapshotCopyWith(
          _$_EventSnapshot value, $Res Function(_$_EventSnapshot) then) =
      __$$_EventSnapshotCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int area,
      String name,
      int id,
      double score,
      EventSnapshotExtras extras});

  @override
  $EventSnapshotExtrasCopyWith<$Res> get extras;
}

/// @nodoc
class __$$_EventSnapshotCopyWithImpl<$Res>
    extends _$EventSnapshotCopyWithImpl<$Res, _$_EventSnapshot>
    implements _$$_EventSnapshotCopyWith<$Res> {
  __$$_EventSnapshotCopyWithImpl(
      _$_EventSnapshot _value, $Res Function(_$_EventSnapshot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? name = null,
    Object? id = null,
    Object? score = null,
    Object? extras = null,
  }) {
    return _then(_$_EventSnapshot(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int,
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
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as EventSnapshotExtras,
    ));
  }
}

/// @nodoc

class _$_EventSnapshot extends _EventSnapshot {
  _$_EventSnapshot(
      {required this.area,
      required this.name,
      required this.id,
      required this.score,
      required this.extras})
      : super._();

  @override
  final int area;
  @override
  final String name;
  @override
  final int id;
  @override
  final double score;
  @override
  final EventSnapshotExtras extras;

  @override
  String toString() {
    return 'EventSnapshot(area: $area, name: $name, id: $id, score: $score, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSnapshot &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.extras, extras) || other.extras == extras));
  }

  @override
  int get hashCode => Object.hash(runtimeType, area, name, id, score, extras);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSnapshotCopyWith<_$_EventSnapshot> get copyWith =>
      __$$_EventSnapshotCopyWithImpl<_$_EventSnapshot>(this, _$identity);
}

abstract class _EventSnapshot extends EventSnapshot {
  factory _EventSnapshot(
      {required final int area,
      required final String name,
      required final int id,
      required final double score,
      required final EventSnapshotExtras extras}) = _$_EventSnapshot;
  _EventSnapshot._() : super._();

  @override
  int get area;
  @override
  String get name;
  @override
  int get id;
  @override
  double get score;
  @override
  EventSnapshotExtras get extras;
  @override
  @JsonKey(ignore: true)
  _$$_EventSnapshotCopyWith<_$_EventSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}
