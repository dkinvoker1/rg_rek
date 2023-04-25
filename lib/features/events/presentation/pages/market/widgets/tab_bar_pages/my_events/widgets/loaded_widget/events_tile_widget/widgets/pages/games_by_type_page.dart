import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rg_rek/features/events/presentation/widgets/event_card_widget/event_card_widget.dart';

import '../../../../../bloc/my_events_bloc.dart';

@RoutePage()
class GamesByTypePage extends StatelessWidget {
  const GamesByTypePage({super.key, required this.gamesByGameType});

  final GamesByGameType gamesByGameType;

  @override
  Widget build(BuildContext context) {
    final colorGrey = Colors.grey.shade100;

    return ListView(
      children: gamesByGameType.gamesByCategory3
          .map(
            (gamesByCategory3) => ExpansionTile(
              collapsedBackgroundColor: colorGrey,
              textColor: Colors.black,
              backgroundColor: colorGrey,
              title: Text(
                  '${gamesByCategory3.category2Name} > ${gamesByCategory3.category3Name}'),
              children: gamesByCategory3.games
                  .map(
                    (gameCaardData) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: EventCardWidget(data: gameCaardData),
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
    );
  }
}
