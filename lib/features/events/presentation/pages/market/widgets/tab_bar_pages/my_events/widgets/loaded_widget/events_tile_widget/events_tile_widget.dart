import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rg_rek/core/widgets/rounded_border_container_widget.dart';
import 'package:rg_rek/features/events/presentation/enums/event_category_enum.dart';
import 'package:rg_rek/features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/widgets/loaded_widget/events_tile_widget/widgets/games_by_type_tab_bar_widget.dart';
import 'package:rg_rek/features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/widgets/loaded_widget/events_tile_widget/widgets/title_widget.dart';

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
