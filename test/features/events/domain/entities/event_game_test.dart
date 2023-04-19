import 'package:flutter_test/flutter_test.dart';
import 'package:rg_rek/features/events/data/models/event_game_model.dart';
import 'package:rg_rek/features/events/data/models/game_outcome_model.dart';
import 'package:rg_rek/features/events/domain/entities/event_game.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';

void main() {
  final tModel = EventGameModel(
    argument: 1.1,
    combinationType: 1,
    eventLayout: 1,
    gameCode: 1,
    gameId: 1,
    gameLayout: true,
    gameName: 'gameName',
    gameType: 1,
    marketTypes: [1],
    periodId: 1,
    outcomes: [
      GameOutcomeModel(
        outcomeId: 1,
        outcomeName: 'outcomeName',
        outcomeOdds: 1.1,
        status: 1,
      ),
    ],
  );

  final tEntity = EventGame(
    argument: 1.1,
    combinationType: 1,
    eventLayout: 1,
    gameCode: 1,
    gameId: 1,
    gameLayout: true,
    gameName: 'gameName',
    gameType: 1,
    marketTypes: [1],
    periodId: 1,
    outcomes: [
      GameOutcome(
        outcomeId: 1,
        outcomeName: 'outcomeName',
        outcomeOdds: 1.1,
        status: 1,
      ),
    ],
  );

  test(
    'fromModel',
    () {
      // act
      final result = EventGame.fromModel(tModel);

      //assert
      expect(result, equals(tEntity));
    },
  );
}
