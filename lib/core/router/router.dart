import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/events/presentation/pages/market/market_page.dart';
import '../../features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';
import '../../features/events/presentation/pages/market/widgets/tab_bar_pages/my_events/widgets/loaded_widget/events_tile_widget/widgets/pages/games_by_type_page.dart';
import '../../features/events/presentation/pages/market/widgets/tab_bar_pages/tap_bar_pages.dart';
import '../../features/events/presentation/pages/quick_search/quick_search_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MarketRoute.page,
          initial: true,
          children: [
            AutoRoute(page: OfferTabRoute.page),
            AutoRoute(
              page: MyEventsTabRoute.page,
              children: [
                AutoRoute(page: GamesByTypeRoute.page),
              ],
            ),
            AutoRoute(page: LiveTabRoute.page),
            AutoRoute(page: HotTabRoute.page),
            AutoRoute(page: CashbackTabRoute.page),
          ],
        ),
        AutoRoute(page: QuickSearchRoute.page),
      ];
}
