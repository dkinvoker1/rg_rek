part of 'my_events_bloc.dart';

@freezed
class MyEventsEvent with _$MyEventsEvent {
  const factory MyEventsEvent.load() = _Load;
  const factory MyEventsEvent.expandCategory(
    EventCategory category,
  ) = _ExpandCategory;
  const factory MyEventsEvent.filterByCategory(
    EventCategory? category,
  ) = _FilterByCategory;
}
