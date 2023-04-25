import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

part 'outcomes_event.dart';
part 'outcomes_state.dart';
part 'outcomes_bloc.freezed.dart';

class OutcomesBloc extends Bloc<OutcomesEvent, OutcomesState> {
  OutcomesBloc() : super(const OutcomesState.initial()) {
    on<_Initialise>((event, emit) {
      emit(OutcomesState.initialised(event.outcomes));
    });
    on<_Select>((event, emit) {
      state.mapOrNull(
        initialised: (value) {
          List<SelectableOutcome> newOutcomes = [];

          for (var selectableOutcome in value.outcomes) {
            if (selectableOutcome.outcome.outcomeId == event.outcomeId) {
              newOutcomes.add(selectableOutcome.copyWith(
                  isSelected: !selectableOutcome.isSelected));
            } else {
              newOutcomes.add(selectableOutcome);
            }
          }

          emit(OutcomesState.initialised(newOutcomes));
        },
      );
    });
  }
}
