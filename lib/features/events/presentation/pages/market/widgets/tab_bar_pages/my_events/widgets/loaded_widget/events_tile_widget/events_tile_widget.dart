import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../../../../core/widgets/rounded_border_container_widget.dart';
import '../../../../../../../../enums/event_category_enum.dart';
import 'widgets/games_by_type_tab_bar_widget.dart';
import 'widgets/title_widget.dart';

import '../../../bloc/my_events_bloc.dart';

class EventTileWidget extends StatelessWidget {
  const EventTileWidget({
    super.key,
    required this.data,
    this.filter,
  });

  final EventsByCategory1 data;
  final EventCategory? filter;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: filter == null ? true : filter == data.eventCategory,
      child: Container(
        decoration: ShapeDecoration(
          shape: Border(
            top: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        child: ExpansionTile(
          collapsedBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          onExpansionChanged: (_) {
            context
                .read<MyEventsBloc>()
                .add(MyEventsEvent.expandCategory(data.eventCategory));
          },
          trailing: data.isExpanded
              ? const RoundedBorderContainerWidget(
                  radius: 5,
                  child: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.black,
                  ),
                )
              : const RoundedBorderContainerWidget(
                  radius: 5,
                  child: Icon(
                    Icons.keyboard_arrow_up_sharp,
                    color: Colors.black,
                  ),
                ),
          title: TitleWidget(
            categoryName: data.eventCategory.name,
            gamesCount: data.gamesCount,
          ),
          children: [
            GamesByTypeTabBarWidget(data: data.gamesByType),
          ],
        ),
      ),
    );
  }
}
