// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseModel<T> _$ResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseModel<T> {
  int get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<T, ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<T, $Res> {
  factory $ResponseModelCopyWith(
          ResponseModel<T> value, $Res Function(ResponseModel<T>) then) =
      _$ResponseModelCopyWithImpl<T, $Res, ResponseModel<T>>;
  @useResult
  $Res call({int code, String description, T data});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<T, $Res, $Val extends ResponseModel<T>>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseModelCopyWith<T, $Res>
    implements $ResponseModelCopyWith<T, $Res> {
  factory _$$_ResponseModelCopyWith(
          _$_ResponseModel<T> value, $Res Function(_$_ResponseModel<T>) then) =
      __$$_ResponseModelCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int code, String description, T data});
}

/// @nodoc
class __$$_ResponseModelCopyWithImpl<T, $Res>
    extends _$ResponseModelCopyWithImpl<T, $Res, _$_ResponseModel<T>>
    implements _$$_ResponseModelCopyWith<T, $Res> {
  __$$_ResponseModelCopyWithImpl(
      _$_ResponseModel<T> _value, $Res Function(_$_ResponseModel<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
    Object? data = freezed,
  }) {
    return _then(_$_ResponseModel<T>(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_ResponseModel<T> implements _ResponseModel<T> {
  _$_ResponseModel(
      {required this.code, required this.description, required this.data});

  factory _$_ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_ResponseModelFromJson(json, fromJsonT);

  @override
  final int code;
  @override
  final String description;
  @override
  final T data;

  @override
  String toString() {
    return 'ResponseModel<$T>(code: $code, description: $description, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseModel<T> &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, description,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseModelCopyWith<T, _$_ResponseModel<T>> get copyWith =>
      __$$_ResponseModelCopyWithImpl<T, _$_ResponseModel<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_ResponseModelToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseModel<T> implements ResponseModel<T> {
  factory _ResponseModel(
      {required final int code,
      required final String description,
      required final T data}) = _$_ResponseModel<T>;

  factory _ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_ResponseModel<T>.fromJson;

  @override
  int get code;
  @override
  String get description;
  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseModelCopyWith<T, _$_ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
