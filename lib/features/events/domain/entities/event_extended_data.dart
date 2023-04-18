import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_extended_data.freezed.dart';

@freezed
class EventExtendedData with _$EventExtendedData {
  const EventExtendedData._();

  factory EventExtendedData({
    required String neutralGround,
    required String remoteCategoryId,
  }) = _EventExtendedData;
}
