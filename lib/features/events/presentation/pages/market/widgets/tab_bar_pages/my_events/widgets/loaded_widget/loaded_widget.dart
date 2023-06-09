import 'package:flutter/material.dart';

import '../../../../../../../enums/event_category_enum.dart';
import '../../bloc/my_events_bloc.dart';
import 'events_tile_widget/events_tile_widget.dart';
import 'filter_widget.dart';

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
