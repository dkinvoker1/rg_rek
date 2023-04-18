import 'package:freezed_annotation/freezed_annotation.dart';

import 'event_extended_data_model.dart';
import 'event_game_model.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const EventModel._();

  factory EventModel({
    required int category1Id,
    required String category1Name,
    required int category2Id,
    required String category2Name,
    required int category3Id,
    required String category3Name,
    required int eventCodeId,
    required int eventId,
    required String eventName,
    required DateTime eventStart,
    required int eventType,
    required int gamesCount,
    required int remoteId,
    required List<EventExtendedDataModel> eventExtendedData,
    required List<EventGameModel> eventGames,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, Object?> json) =>
      _$EventModelFromJson(json);
}
