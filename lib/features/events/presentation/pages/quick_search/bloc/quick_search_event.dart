part of 'quick_search_bloc.dart';

@freezed
class QuickSearchEvent with _$QuickSearchEvent {
  const factory QuickSearchEvent.searchByPhrase(String phrase) = _SearchByPhrase;
}