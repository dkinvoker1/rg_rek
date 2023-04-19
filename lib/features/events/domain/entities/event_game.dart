import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/event_game_model.dart';
import 'game_outcome.dart';

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
    required String gameName,
    required int gameType,
    required List<int> marketTypes,
    required int periodId,
    required List<GameOutcome> outcomes,
  }) = _EventGame;

  factory EventGame.fromModel(EventGameModel model) {
    return EventGame(
      argument: model.argument,
      combinationType: model.combinationType,
      eventLayout: model.eventLayout,
      gameCode: model.gameCode,
      gameId: model.gameId,
      gameLayout: model.gameLayout,
      gameName: model.gameName,
      gameType: model.gameType,
      marketTypes: model.marketTypes,
      periodId: model.periodId,
      outcomes: model.outcomes.map((e) => GameOutcome.fromModel(e)).toList(),
    );
  }
}
