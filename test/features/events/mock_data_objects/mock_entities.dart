import 'package:rg_rek/features/events/domain/entities/event.dart';
import 'package:rg_rek/features/events/domain/entities/event_extended_data.dart';
import 'package:rg_rek/features/events/domain/entities/event_game.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot.dart';
import 'package:rg_rek/features/events/domain/entities/event_snapshot_extras.dart';
import 'package:rg_rek/features/events/domain/entities/game_outcome.dart';
import 'package:rg_rek/features/events/presentation/enums/event_category_enum.dart';
import 'package:rg_rek/features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

// Event

final tEventList = [
  tEvent,
];

final tEvent = Event(
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
  gamesCount: 1,
  remoteId: 1,
  eventExtendedData: tEventExtendedData,
  eventGames: [
    tEventGame,
  ],
);

final tEventExtendedData = EventExtendedData(
  neutralGround: 'neutralGround',
  remoteCategoryId: 'remoteCategoryId',
);

final tEventGame = EventGame(
  argument: 1.1,
  combinationType: 1,
  eventLayout: 1,
  gameCode: 1,
  gameId: 1.1,
  gameLayout: 1,
  gameName: 'gameName',
  gameType: 1,
  marketTypes: [1],
  outcomes: [tGameOutcome],
);

final tGameOutcome = GameOutcome(
  outcomeId: 1,
  outcomeName: 'outcomeName',
  outcomeOdds: 1.1,
  status: 1,
);

// Event Snapshot

final tEventSnapshotList = [
  tEventSnapshot,
];

final tEventSnapshot = EventSnapshot(
  area: 1,
  name: 'Mad footbal',
  id: 1,
  score: 1.1,
  extras: tEventSnapshotExtras,
);

final tEventSnapshotExtras = EventSnapshotExtras(
  categoryId3: 1,
  categoryId2: 1,
  sportId: 1,
  categoryName1: 'CATEGORY_NAME_1',
  categoryId1: 1,
  categoryName2: 'CATEGORY_NAME_2',
  categoryName3: 'CATEGORY_NAME_3',
);

// Event by category
final List<EventsByCategory1> tEventsByCategory1 = [
  EventsByCategory1(
    eventCategory: EventCategory.scoocer,
    gamesCount: 1,
    gamesByType: tGamesByGameType,
    isExpanded: false,
  ),
];

final List<GamesByGameType> tGamesByGameType = [
  GamesByGameType(
    gameName: 'gameName',
    gamesByCategory3: tGamesByCategory3,
  ),
];

final List<GamesByCategory3> tGamesByCategory3 = [
  GamesByCategory3(
    category2Name: 'category2Name',
    category3Name: 'category3Name',
    games: tGamesCardData,
  ),
];

final List<GameCardData> tGamesCardData = [
  GameCardData(
    category1Id: 1,
    category1Name: 'category1Name',
    gameType: 1,
    gameName: 'gameName',
    category2Name: 'category2Name',
    category3Id: 1,
    category3Name: 'category3Name',
    eventStart: DateTime(2000, 1, 1),
    outcomes: tSelectableOutcomes,
  ),
];

final List<SelectableOutcome> tSelectableOutcomes = [
  SelectableOutcome(isSelected: false, outcome: tGameOutcome),
];
