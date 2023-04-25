

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseModel<T> with _$ResponseModel<T> {
  factory ResponseModel({
    required int code,
    required String description,
    required T data,
  }) = _ResponseModel<T>;

  factory ResponseModel.fromJson(
    Map<String, Object?> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResponseModelFromJson(json, fromJsonT);
}
