part of 'events_by_category_bloc.dart';

@freezed
class EventsByCategoryEvent with _$EventsByCategoryEvent {
  const factory EventsByCategoryEvent.searchByCategory(EventCategory category) =
      _SearchByCategory;
}
