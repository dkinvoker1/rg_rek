// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_extended_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventExtendedDataModel _$EventExtendedDataModelFromJson(
    Map<String, dynamic> json) {
  return _EventExtendedDataModel.fromJson(json);
}

/// @nodoc
mixin _$EventExtendedDataModel {
  String get neutralGround => throw _privateConstructorUsedError;
  String get remoteCategoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventExtendedDataModelCopyWith<EventExtendedDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventExtendedDataModelCopyWith<$Res> {
  factory $EventExtendedDataModelCopyWith(EventExtendedDataModel value,
          $Res Function(EventExtendedDataModel) then) =
      _$EventExtendedDataModelCopyWithImpl<$Res, EventExtendedDataModel>;
  @useResult
  $Res call({String neutralGround, String remoteCategoryId});
}

/// @nodoc
class _$EventExtendedDataModelCopyWithImpl<$Res,
        $Val extends EventExtendedDataModel>
    implements $EventExtendedDataModelCopyWith<$Res> {
  _$EventExtendedDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_EventExtendedDataModelCopyWith<$Res>
    implements $EventExtendedDataModelCopyWith<$Res> {
  factory _$$_EventExtendedDataModelCopyWith(_$_EventExtendedDataModel value,
          $Res Function(_$_EventExtendedDataModel) then) =
      __$$_EventExtendedDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String neutralGround, String remoteCategoryId});
}

/// @nodoc
class __$$_EventExtendedDataModelCopyWithImpl<$Res>
    extends _$EventExtendedDataModelCopyWithImpl<$Res,
        _$_EventExtendedDataModel>
    implements _$$_EventExtendedDataModelCopyWith<$Res> {
  __$$_EventExtendedDataModelCopyWithImpl(_$_EventExtendedDataModel _value,
      $Res Function(_$_EventExtendedDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? neutralGround = null,
    Object? remoteCategoryId = null,
  }) {
    return _then(_$_EventExtendedDataModel(
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
@JsonSerializable()
class _$_EventExtendedDataModel extends _EventExtendedDataModel {
  _$_EventExtendedDataModel(
      {required this.neutralGround, required this.remoteCategoryId})
      : super._();

  factory _$_EventExtendedDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventExtendedDataModelFromJson(json);

  @override
  final String neutralGround;
  @override
  final String remoteCategoryId;

  @override
  String toString() {
    return 'EventExtendedDataModel(neutralGround: $neutralGround, remoteCategoryId: $remoteCategoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventExtendedDataModel &&
            (identical(other.neutralGround, neutralGround) ||
                other.neutralGround == neutralGround) &&
            (identical(other.remoteCategoryId, remoteCategoryId) ||
                other.remoteCategoryId == remoteCategoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, neutralGround, remoteCategoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventExtendedDataModelCopyWith<_$_EventExtendedDataModel> get copyWith =>
      __$$_EventExtendedDataModelCopyWithImpl<_$_EventExtendedDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventExtendedDataModelToJson(
      this,
    );
  }
}

abstract class _EventExtendedDataModel extends EventExtendedDataModel {
  factory _EventExtendedDataModel(
      {required final String neutralGround,
      required final String remoteCategoryId}) = _$_EventExtendedDataModel;
  _EventExtendedDataModel._() : super._();

  factory _EventExtendedDataModel.fromJson(Map<String, dynamic> json) =
      _$_EventExtendedDataModel.fromJson;

  @override
  String get neutralGround;
  @override
  String get remoteCategoryId;
  @override
  @JsonKey(ignore: true)
  _$$_EventExtendedDataModelCopyWith<_$_EventExtendedDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
