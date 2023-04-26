import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';
import '../bloc/outcomes_bloc.dart';
import 'outcomes_toggle_button_widget.dart';

class OutcomesToggleButtonsWidget extends StatelessWidget {
  const OutcomesToggleButtonsWidget({
    super.key,
    required this.outcomes,
  });

  final List<SelectableOutcome> outcomes;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      onPressed: (index) => context.read<OutcomesBloc>().add(
            OutcomesEvent.select(outcomes[index].outcome.outcomeId),
          ),
      renderBorder: false,
      fillColor: Colors.white,
      isSelected: outcomes.map((e) => e.isSelected).toList(),
      children: outcomes.mapIndexed((index, e) {
        return OutcomesToggleButtonWidget(
          index: index,
          selectableOutcome: e,
        );
      }).toList(),
    );
  }
}
