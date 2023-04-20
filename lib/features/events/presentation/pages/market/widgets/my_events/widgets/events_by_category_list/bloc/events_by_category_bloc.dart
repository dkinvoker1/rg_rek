import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../../../domain/use_cases/load_events_by_category.dart';
import '../../../../../../../enums/event_category_enum.dart';

import '../../../../../../../../../../core/errors/failures.dart';
import '../../../../../../../../domain/entities/event.dart';

part 'events_by_category_event.dart';
part 'events_by_category_state.dart';
part 'events_by_category_bloc.freezed.dart';

class EventsByCategoryBloc
    extends Bloc<EventsByCategoryEvent, EventsByCategoryState> {
  final LoadEventsByCategory loadEventsByCategory;
  final EventCategory eventCategory;

  EventsByCategoryBloc({
    required this.loadEventsByCategory,
    required this.eventCategory,
  }) : super(const EventsByCategoryState.initial()) {
    on<EventsByCategoryEvent>((event, emit) async {
      emit(const EventsByCategoryState.loading());

      var events = await loadEventsByCategory(eventCategory.index);

      events.fold(
        (failure) => failure.when(
          serverFailure: (_) => emit(
            const EventsByCategoryState.error(serverFailureString),
          ),
          connectionFailure: (_) => emit(
            const EventsByCategoryState.error(connectionFailureString),
          ),
        ),
        (succes) => succes.isNotEmpty
            ? emit(EventsByCategoryState.loaded(succes))
            : emit(const EventsByCategoryState.loadedEmpty()),
      );
    });
  }
}
