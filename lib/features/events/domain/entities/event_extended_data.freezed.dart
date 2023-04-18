// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_extended_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventExtendedData {
  String get neutralGround => throw _privateConstructorUsedError;
  String get remoteCategoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventExtendedDataCopyWith<EventExtendedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventExtendedDataCopyWith<$Res> {
  factory $EventExtendedDataCopyWith(
          EventExtendedData value, $Res Function(EventExtendedData) then) =
      _$EventExtendedDataCopyWithImpl<$Res, EventExtendedData>;
  @useResult
  $Res call({String neutralGround, String remoteCategoryId});
}

/// @nodoc
class _$EventExtendedDataCopyWithImpl<$Res, $Val extends EventExtendedData>
    implements $EventExtendedDataCopyWith<$Res> {
  _$EventExtendedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? neutralGround = null,
    Object? remoteCategoryId = null,
  }) {
    return _then(_value.copyWith(
      neutralGround: null == neutralGround
          ? _value.neutralGround
          : neutralGround // ignore: cast_nullable_to_non_nullable
              as String,
      remoteCategoryId: null == remoteCategoryId
          ? _value.remoteCategoryId
          : remoteCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventExtendedDataCopyWith<$Res>
    implements $EventExtendedDataCopyWith<$Res> {
  factory _$$_EventExtendedDataCopyWith(_$_EventExtendedData value,
          $Res Function(_$_EventExtendedData) then) =
      __$$_EventExtendedDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String neutralGround, String remoteCategoryId});
}

/// @nodoc
class __$$_EventExtendedDataCopyWithImpl<$Res>
    extends _$EventExtendedDataCopyWithImpl<$Res, _$_EventExtendedData>
    implements _$$_EventExtendedDataCopyWith<$Res> {
  __$$_EventExtendedDataCopyWithImpl(
      _$_EventExtendedData _value, $Res Function(_$_EventExtendedData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? neutralGround = null,
    Object? remoteCategoryId = null,
  }) {
    return _then(_$_EventExtendedData(
      neutralGround: null == neutralGround
          ? _value.neutralGround
          : neutralGround // ignore: cast_nullable_to_non_nullable
              as String,
      remoteCategoryId: null == remoteCategoryId
          ? _value.remoteCategoryId
          : remoteCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventExtendedData extends _EventExtendedData {
  _$_EventExtendedData(
      {required this.neutralGround, required this.remoteCategoryId})
      : super._();

  @override
  final String neutralGround;
  @override
  final String remoteCategoryId;

  @override
  String toString() {
    return 'EventExtendedData(neutralGround: $neutralGround, remoteCategoryId: $remoteCategoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventExtendedData &&
            (identical(other.neutralGround, neutralGround) ||
                other.neutralGround == neutralGround) &&
            (identical(other.remoteCategoryId, remoteCategoryId) ||
                other.remoteCategoryId == remoteCategoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, neutralGround, remoteCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventExtendedDataCopyWith<_$_EventExtendedData> get copyWith =>
      __$$_EventExtendedDataCopyWithImpl<_$_EventExtendedData>(
          this, _$identity);
}

abstract class _EventExtendedData extends EventExtendedData {
  factory _EventExtendedData(
      {required final String neutralGround,
      required final String remoteCategoryId}) = _$_EventExtendedData;
  _EventExtendedData._() : super._();

  @override
  String get neutralGround;
  @override
  String get remoteCategoryId;
  @override
  @JsonKey(ignore: true)
  _$$_EventExtendedDataCopyWith<_$_EventExtendedData> get copyWith =>
      throw _privateConstructorUsedError;
}
