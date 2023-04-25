import 'package:flutter/material.dart';

import '../../../../../../../../core/widgets/rounded_border_container_widget.dart';
import '../../../../../pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

class OutcomesToggleButtonWidget extends StatelessWidget {
  const OutcomesToggleButtonWidget({
    super.key,
    required this.selectableOutcome,
    required this.index,
  });

  final int index;
  final SelectableOutcome selectableOutcome;

  @override
  Widget build(BuildContext context) {
    var textColor = selectableOutcome.isSelected ? Colors.white : Colors.black;
    var buttonColor = selectableOutcome.isSelected ? Colors.red.shade800 : Colors.white;
    var buttonBorderColor = selectableOutcome.isSelected ? Colors.red.shade800 : null;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 50,
        width: 50,
        child: RoundedBorderContainerWidget(
          color: buttonColor,
          borderColor: buttonBorderColor,
          radius: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  selectableOutcome.outcome.outcomeName.length > 5
                      ? (index + 1).toString()
                      : selectableOutcome.outcome.outcomeName,
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                Text(
                  selectableOutcome.outcome.outcomeOdds.toString(),
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: textColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
