import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rg_rek/features/events/domain/entities/event_extended_data.dart';
import 'package:rg_rek/features/events/domain/entities/event_game.dart';

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
    required int eventCodeId,
    required int eventId,
    required String eventName,
    required DateTime eventStart,
    required int eventType,
    required int gamesCount,
    required Long remoteId,
    required List<EventExtendedData> eventExtendedData,
    required List<EventGame> eventGames,
  }) = _Event;
}
