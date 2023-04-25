part of 'quick_search_bloc.dart';

@freezed
class QuickSearchState with _$QuickSearchState {
  const factory QuickSearchState.initial() = _Initial;
  const factory QuickSearchState.loading() = _Loading;
  const factory QuickSearchState.loaded(
    List<GameCardData> games,
  ) = _Loaded;
  const factory QuickSearchState.loadedEmpty() = _Empty;
  const factory QuickSearchState.error(String message) = _Error;
}
