// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseModel<T> _$$_ResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_ResponseModel<T>(
      code: json['code'] as int,
      description: json['description'] as String,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$$_ResponseModelToJson<T>(
  _$_ResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'data': toJsonT(instance.data),
    };
