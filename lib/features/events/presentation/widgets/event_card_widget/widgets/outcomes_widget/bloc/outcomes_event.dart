part of 'outcomes_bloc.dart';

@freezed
class OutcomesEvent with _$OutcomesEvent {
  const factory OutcomesEvent.initialise(
    List<SelectableOutcome> outcomes,
  ) = _Initialise;
  const factory OutcomesEvent.select(
    int outcomeId,
  ) = _Select;
}
