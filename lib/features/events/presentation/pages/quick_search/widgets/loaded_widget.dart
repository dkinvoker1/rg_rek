import 'package:flutter/material.dart';

import '../../../widgets/event_card_widget/event_card_widget.dart';
import '../../market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

class LoadedWidget extends StatelessWidget {
  const LoadedWidget({Key? key, required this.games}) : super(key: key);

  final List<GameCardData> games;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: games
          .map(
            (e) => EventCardWidget(data: e),
          )
          .toList(),
    );
  }
}
