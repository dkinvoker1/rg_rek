import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

part 'outcomes_event.dart';
part 'outcomes_state.dart';
part 'outcomes_bloc.freezed.dart';

class OutcomesBloc extends Bloc<OutcomesEvent, OutcomesState> {
  OutcomesBloc() : super(const OutcomesState.initial()) {
    on<_Initialise>(_initialiseHandle);
    on<_Select>(_selectHandle);
  }

  FutureOr<void> _selectHandle(event, emit) {
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
  }

  FutureOr<void> _initialiseHandle(event, emit) {
    emit(OutcomesState.initialised(event.outcomes));
  }
}
