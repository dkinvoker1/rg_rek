part of 'my_events_bloc.dart';

@freezed
class MyEventsState with _$MyEventsState {
  const factory MyEventsState.initial() = _Initial;
  const factory MyEventsState.loading() = _Loading;
  const factory MyEventsState.loaded(
    List<EventsByCategory1> eventsByCategory,
    EventCategory? filterByCategory,
  ) = _Loaded;
  const factory MyEventsState.loadedEmpty() = _Empty;
  const factory MyEventsState.error(String message) = _Error;
}

@freezed
class EventsByCategory1 with _$EventsByCategory1 {
  const EventsByCategory1._();

  factory EventsByCategory1({
    required EventCategory eventCategory,
    required int gamesCount,
    required List<GamesByGameType> gamesByType,
    required bool isExpanded,
  }) = _EventsByCategory1;
}

@freezed
class GamesByGameType with _$GamesByGameType {
  const GamesByGameType._();

  factory GamesByGameType({
    required String gameName,
    required List<GamesByCategory3> gamesByCategory3,
  }) = _EventsByGameType;
}

@freezed
class GamesByCategory3 with _$GamesByCategory3 {
  const GamesByCategory3._();

  factory GamesByCategory3({
    required String category2Name,
    required String category3Name,
    required List<GameCardData> games,
  }) = _GamesByCategory3;
}

@freezed
class GameCardData with _$GameCardData {
  const GameCardData._();

  factory GameCardData({
    required int category1Id,
    required String category1Name,
    required int gameType,
    required String gameName,
    required String category2Name,
    required int category3Id,
    required String category3Name,
    required DateTime? eventStart,
    required List<SelectableOutcome> outcomes,
  }) = _GameCardData;
}

@freezed
class SelectableOutcome with _$SelectableOutcome {
  const SelectableOutcome._();

  factory SelectableOutcome({
    required bool isSelected,
    required GameOutcome outcome,
  }) = _SelectableOutcome;
}
