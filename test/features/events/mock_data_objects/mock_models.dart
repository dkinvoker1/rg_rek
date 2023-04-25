import 'package:rg_rek/features/events/data/models/event_extended_data_model.dart';
import 'package:rg_rek/features/events/data/models/event_game_model.dart';
import 'package:rg_rek/features/events/data/models/event_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_extras_model.dart';
import 'package:rg_rek/features/events/data/models/event_snapshot_model.dart';
import 'package:rg_rek/features/events/data/models/game_outcome_model.dart';
import 'package:rg_rek/features/events/data/models/response_model.dart';

// Event Model

var tResponseModel = ResponseModel(
  code: 200,
  description: 'description',
  data: tEventModelList,
);

final tEventModelList = [
  tEventModel,
];

final tEventModel = EventModel(
  category1Id: 1,
  category1Name: 'category1Name',
  category2Id: 1,
  category2Name: 'category2Name',
  category3Id: 1,
  category3Name: 'category3Name',
  eventCodeId: 1,
  eventId: 1,
  eventName: 'eventName',
  eventStart: DateTime(2000, 1, 1).millisecondsSinceEpoch,
  eventType: 1,
  gamesCount: 1,
  remoteId: 1,
  eventExtendedData: tEventExtendedDataModel,
  eventGames: [
    tEventGameModel,
  ],
);

final tEventExtendedDataModel = EventExtendedDataModel(
  neutralGround: 'neutralGround',
  remoteCategoryId: 'remoteCategoryId',
);

final tEventGameModel = EventGameModel(
  argument: 1.1,
  combinationType: 1,
  eventLayout: 1,
  gameCode: 1,
  gameId: 1.1,
  gameLayout: 1,
  gameName: 'gameName',
  gameType: 1,
  marketTypes: [1],
  outcomes: [tGameOutcomeModel],
);

final tGameOutcomeModel = GameOutcomeModel(
  outcomeId: 1,
  outcomeName: 'outcomeName',
  outcomeOdds: 1.1,
  status: 1,
);

// Game Snapshot Model

final tSnapshotModelList = [
  tEventSnapshotModel,
];

final tEventSnapshotModel = EventSnapshotModel(
  area: 1,
  name: 'Mad footbal',
  id: 1,
  score: 1.1,
  extras: tEventSnapshotExtrasModel,
);

final tEventSnapshotExtrasModel = EventSnapshotExtrasModel(
  CATEGORY_ID_3: 1,
  CATEGORY_ID_2: 1,
  SPORT_ID: 1,
  CATEGORY_NAME_1: 'CATEGORY_NAME_1',
  CATEGORY_ID_1: 1,
  CATEGORY_NAME_2: 'CATEGORY_NAME_2',
  CATEGORY_NAME_3: 'CATEGORY_NAME_3',
);
