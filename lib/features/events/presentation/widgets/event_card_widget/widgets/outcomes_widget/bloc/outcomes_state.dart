part of 'outcomes_bloc.dart';

@freezed
class OutcomesState with _$OutcomesState {
  const factory OutcomesState.initial() = _Initial;
  const factory OutcomesState.initialised(
    List<SelectableOutcome> outcomes,
  ) = _Initialised;
}
