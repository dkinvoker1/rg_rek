import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_extended_data_model.freezed.dart';
part 'event_extended_data_model.g.dart';

@freezed
class EventExtendedDataModel with _$EventExtendedDataModel {
  const EventExtendedDataModel._();

  factory EventExtendedDataModel({
    required String neutralGround,
    required String remoteCategoryId,
  }) = _EventExtendedDataModel;

  factory EventExtendedDataModel.fromJson(Map<String, Object?> json) =>
      _$EventExtendedDataModelFromJson(json);
}
