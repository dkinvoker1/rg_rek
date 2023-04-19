import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rg_rek/features/events/data/models/event_extended_data_model.dart';

part 'event_extended_data.freezed.dart';

@freezed
class EventExtendedData with _$EventExtendedData {
  const EventExtendedData._();

  factory EventExtendedData({
    required String neutralGround,
    required String remoteCategoryId,
  }) = _EventExtendedData;

  factory EventExtendedData.fromModel(EventExtendedDataModel model) {
    return EventExtendedData(
      neutralGround: model.neutralGround,
      remoteCategoryId: model.remoteCategoryId,
    );
  }
}
