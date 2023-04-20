part of 'quick_search_bloc.dart';

@freezed
class QuickSearchState with _$QuickSearchState {
  const factory QuickSearchState.initial() = _QuickSearchInitial;
  const factory QuickSearchState.loading() = _QuickSearchLoading;
  const factory QuickSearchState.loaded(
    List<EventSnapshot> eventsList,
  ) = _QuickSearchLoaded;
  const factory QuickSearchState.loadedEmpty() = _QuickSearchEmpty;
  const factory QuickSearchState.error(String message) = _QuickSearchError;
}
