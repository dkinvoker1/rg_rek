import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/event_model.dart';
import 'event_extended_data.dart';
import 'event_game.dart';

part 'event.freezed.dart';

@freezed
class Event with _$Event {
  const Event._();

  factory Event({
    required int category1Id,
    required String category1Name,
    required int category2Id,
    required String category2Name,
    required int category3Id,
    required String category3Name,
    required int? eventCodeId,
    required int eventId,
    required String eventName,
    required DateTime eventStart,
    required int eventType,
    required int gamesCount,
    required int? remoteId,
    required EventExtendedData eventExtendedData,
    required List<EventGame> eventGames,
  }) = _Event;

  factory Event.fromModel(EventModel model) {
    return Event(
      category1Id: model.category1Id,
      category1Name: model.category1Name,
      category2Id: model.category2Id,
      category2Name: model.category2Name,
      category3Id: model.category3Id,
      category3Name: model.category3Name,
      eventCodeId: model.eventCodeId,
      eventId: model.eventId,
      eventName: model.eventName,
      eventStart: DateTime.fromMillisecondsSinceEpoch(model.eventStart),
      eventType: model.eventType,
      gamesCount: model.gamesCount,
      remoteId: model.remoteId,
      eventExtendedData: EventExtendedData.fromModel(model.eventExtendedData),
      eventGames: model.eventGames.map((e) => EventGame.fromModel(e)).toList(),
    );
  }
}
