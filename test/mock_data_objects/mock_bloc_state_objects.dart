import 'package:rg_rek/features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

import 'mock_entities.dart';

var tGameCardDataList = [
  tGameCardData,
  tGameCardData2,
];

var tGameCardData = GameCardData(
  category1Id: 1,
  category1Name: 'category1Name',
  gameType: 1,
  gameName: 'gameName',
  category2Name: 'category2Name',
  category3Id: 1,
  category3Name: 'category3Name',
  eventStart: DateTime(2000, 1, 1),
  outcomes: [tSelectableOutcome],
);

var tSelectableOutcome = SelectableOutcome(
  isSelected: false,
  outcome: tGameOutcome,
);

var tGameCardData2 = GameCardData(
  category1Id: 2,
  category1Name: 'category1Name2',
  gameType: 2,
  gameName: 'gameName2',
  category2Name: 'category2Name2',
  category3Id: 2,
  category3Name: 'category3Name2',
  eventStart: DateTime(2000, 1, 1),
  outcomes: [tSelectableOutcome],
);
