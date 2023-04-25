import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../../../core/router/router.dart';
import '../../../../bloc/my_events_bloc.dart';

class GamesByTypeTabBarWidget extends StatelessWidget {
  const GamesByTypeTabBarWidget({
    super.key,
    required this.data,
  });

  final List<GamesByGameType> data;

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: data.map((e) => GamesByTypeRoute(gamesByGameType: e)).toList(),
      builder: (context, child, tabController) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              controller: tabController,
              tabs: data
                  .map((e) => Tab(
                        text: e.gameName,
                      ))
                  .toList(),
            ),
            // child,
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: child,
            ),
          ],
        );
      },
    );
  }
}
