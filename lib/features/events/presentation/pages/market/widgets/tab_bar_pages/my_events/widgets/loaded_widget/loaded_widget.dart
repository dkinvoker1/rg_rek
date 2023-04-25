import 'package:flutter/material.dart';
import 'package:rg_rek/features/events/presentation/enums/event_category_enum.dart';
import 'package:rg_rek/features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/widgets/loaded_widget/filter_widget.dart';

import '../../bloc/my_events_bloc.dart';
import 'events_tile_widget/events_tile_widget.dart';

class LoadedWidget extends StatelessWidget {
  const LoadedWidget({Key? key, required this.eventsByCategory, this.filter})
      : super(key: key);

  final List<EventsByCategory1> eventsByCategory;
  final EventCategory? filter;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      FilterWidget(
        eventsByCategory: eventsByCategory,
        filter: filter,
      )
    ];

    widgets.addAll(eventsByCategory.map(
      (e) => EventTileWidget(
        data: e,
        filter: filter,
      ),
    ));

    return Column(
      children: widgets,
    );
  }
}
