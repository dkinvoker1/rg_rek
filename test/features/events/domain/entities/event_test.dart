import 'package:flutter_test/flutter_test.dart';
import 'package:rg_rek/features/events/data/models/event_extended_data_model.dart';
import 'package:rg_rek/features/events/data/models/event_game_model.dart';
import 'package:rg_rek/features/events/data/models/event_model.dart';
import 'package:rg_rek/features/events/data/models/game_outcome_model.dart';
import 'package:rg_rek/features/events/domain/entities/event.dart';
import 'package:rg_rek/features/events/domain/entities/event_extended_data.dart';
import 'package:rg_rek/features/events/domain/entities/event_game.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';

void main() {
  final tModel = EventModel(
    category1Id: 1,
    category1Name: 'category1Name',
    category2Id: 1,
    category2Name: 'category2Name',
    category3Id: 1,
    category3Name: 'category3Name',
    eventCodeId: 1,
    eventId: 1,
    eventName: 'eventName',
    eventStart: DateTime(2000, 1, 1),
    eventType: 1,
    gamesCount: 2,
    remoteId: 1,
    eventExtendedData: [
      EventExtendedDataModel(
        neutralGround: 'neutralGround',
        remoteCategoryId: 'remoteCategoryId',
      ),
      EventExtendedDataModel(
        neutralGround: 'neutralGround2',
        remoteCategoryId: 'remoteCategoryId2',
      ),
    ],
    eventGames: [
      EventGameModel(
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
      ),
      EventGameModel(
        argument: 1.2,
        combinationType: 2,
        eventLayout: 2,
        gameCode: 2,
        gameId: 2,
        gameLayout: true,
        gameName: 'gameName2',
        gameType: 2,
        marketTypes: [1, 2],
        periodId: 2,
        outcomes: [
          GameOutcomeModel(
            outcomeId: 2,
            outcomeName: 'outcomeName2',
            outcomeOdds: 1.2,
            status: 2,
          ),
        ],
      ),
    ],
  );

  final tEntity =Event(
    category1Id: 1,
    category1Name: 'category1Name',
    category2Id: 1,
    category2Name: 'category2Name',
    category3Id: 1,
    category3Name: 'category3Name',
    eventCodeId: 1,
    eventId: 1,
    eventName: 'eventName',
    eventStart: DateTime(2000, 1, 1),
    eventType: 1,
    gamesCount: 2,
    remoteId: 1,
    eventExtendedData: [
      EventExtendedData(
        neutralGround: 'neutralGround',
        remoteCategoryId: 'remoteCategoryId',
      ),
      EventExtendedData(
        neutralGround: 'neutralGround2',
        remoteCategoryId: 'remoteCategoryId2',
      ),
    ],
    eventGames: [
      EventGame(
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
      ),
      EventGame(
        argument: 1.2,
        combinationType: 2,
        eventLayout: 2,
        gameCode: 2,
        gameId: 2,
        gameLayout: true,
        gameName: 'gameName2',
        gameType: 2,
        marketTypes: [1, 2],
        periodId: 2,
        outcomes: [
          GameOutcome(
            outcomeId: 2,
            outcomeName: 'outcomeName2',
            outcomeOdds: 1.2,
            status: 2,
          ),
        ],
      ),
    ],
  );

  test(
    'fromModel',
    () {
      // act
      final result = Event.fromModel(tModel);

      //assert
      expect(result, equals(tEntity));
    },
  );
}
