import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../../core/widgets/rounded_border_container_widget.dart';
import '../../../../../../../enums/event_category_enum.dart';
import '../../bloc/my_events_bloc.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key, required this.eventsByCategory, this.filter})
      : super(key: key);

  final List<EventsByCategory1> eventsByCategory;
  final EventCategory? filter;

  @override
  Widget build(BuildContext context) {
    final Color colorGrey = Colors.blueGrey.shade100;

    List<bool> selected = [filter == null];
    selected.addAll(eventsByCategory.map((e) => e.eventCategory == filter));

    List<Widget> filters = [
      Padding(
        padding: const EdgeInsets.all(8),
        child: RoundedBorderContainerWidget(
          color: filter == null ? colorGrey : Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  'all',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ).tr(),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  eventsByCategory
                      .fold(
                        0,
                        (previousValue, element) =>
                            previousValue + element.gamesCount,
                      )
                      .toString(),
                )
              ],
            ),
          ),
        ),
      ),
    ];

    filters.addAll(
      eventsByCategory.map(
        (e) => Padding(
          padding: const EdgeInsets.all(8),
          child: RoundedBorderContainerWidget(
            color: filter == e.eventCategory ? colorGrey : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    e.eventCategory.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    e.gamesCount.toString(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );

    return Container(
      color: Colors.white,
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Image.asset(
              'assets/images/filterIcon.png',
            ),
          ),
          ToggleButtons(
            onPressed: (index) {
              var category = EventCategory.values.firstWhereOrNull(
                (e) => e.value == index,
              );
              context
                  .read<MyEventsBloc>()
                  .add(MyEventsEvent.filterByCategory(category));
            },
            renderBorder: false,
            fillColor: Colors.white,
            selectedColor: Colors.black,
            isSelected: selected,
            children: filters,
          ),
        ],
      ),
    );
  }
}
