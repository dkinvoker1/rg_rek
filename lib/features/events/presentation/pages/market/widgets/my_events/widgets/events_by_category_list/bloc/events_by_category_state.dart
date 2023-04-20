part of 'events_by_category_bloc.dart';

@freezed
class EventsByCategoryState with _$EventsByCategoryState {
  const factory EventsByCategoryState.initial() = _EventsByCategoryInitial;
  const factory EventsByCategoryState.loading() = _EventsByCategoryLoading;
  const factory EventsByCategoryState.loaded(
    List<Event> eventsList,
  ) = _EventsByCategoryLoaded;
  const factory EventsByCategoryState.loadedEmpty() = _EventsByCategoryEmpty;
  const factory EventsByCategoryState.error(String message) =
      _EventsByCategoryError;
}
