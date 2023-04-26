import 'package:flutter/material.dart';

import '../../../../../core/widgets/rounded_border_container_widget.dart';
import '../../pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';
import 'widgets/widgets.dart';

class EventCardWidget extends StatelessWidget {
  const EventCardWidget({
    super.key,
    required this.data,
  });

  final GameCardData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: RoundedBorderContainerWidget(
        radius: 15,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NameWidget(data: data,),
                  const HotTagWidget(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TimeUntilEventLineIndicatorWidget(
                startTime: data.eventStart,
              ),
              const SizedBox(
                height: 10,
              ),
              OutcomesWidget(outcomes: data.outcomes),
            ],
          ),
        ),
      ),
    );
  }
}
