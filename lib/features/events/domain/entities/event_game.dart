import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';

part 'event_game.freezed.dart';

@freezed
class EventGame with _$EventGame {
  const EventGame._();

  factory EventGame({
    required double argument,
    required int combinationType,
    required int eventLayout,
    required int gameCode,
    required double gameId,
    required bool gameLayout,
    required int gameName,
    required int gameType,
    required List<int> marketTypes,
    required int periodId,
    required List<GameOutcome> outcomes,
  }) = _EventGame;
}
