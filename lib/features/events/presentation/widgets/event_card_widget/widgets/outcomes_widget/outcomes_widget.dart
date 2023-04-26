import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/service_locator.dart';
import 'bloc/outcomes_bloc.dart';
import 'widgets/outcomes_toggle_buttons_widget.dart';

import '../../../../pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

class OutcomesWidget extends StatelessWidget {
  const OutcomesWidget({
    super.key,
    required this.outcomes,
  });

  final List<SelectableOutcome> outcomes;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OutcomesBloc>(),
      child: OutcomesBuilder(
        outcomes: outcomes,
      ),
    );
  }
}

class OutcomesBuilder extends StatefulWidget {
  const OutcomesBuilder({Key? key, required this.outcomes}) : super(key: key);

  final List<SelectableOutcome> outcomes;

  @override
  State<OutcomesBuilder> createState() => _OutcomesBuilderState();
}

class _OutcomesBuilderState extends State<OutcomesBuilder> {
  @override
  void didChangeDependencies() {
    context.read<OutcomesBloc>().add(OutcomesEvent.initialise(widget.outcomes));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.outcomes
              .map(
                (e) => Text(e.outcome.outcomeName),
              )
              .toList(),
        ),
        BlocBuilder<OutcomesBloc, OutcomesState>(
          builder: (context, state) {
            return state.maybeWhen(
              initialised: (outcomes) => OutcomesToggleButtonsWidget(
                outcomes: outcomes,
              ),
              initial: () => const SizedBox.shrink(),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }
}
