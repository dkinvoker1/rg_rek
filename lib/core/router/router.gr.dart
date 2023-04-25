// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MarketRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MarketPage(),
      );
    },
    CashbackTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CashbackTabPage(),
      );
    },
    HotTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HotTabPage(),
      );
    },
    LiveTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LiveTabPage(),
      );
    },
    MyEventsTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyEventsTabPage(),
      );
    },
    OfferTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OfferTabPage(),
      );
    },
    QuickSearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QuickSearchPage(),
      );
    },
    GamesByTypeRoute.name: (routeData) {
      final args = routeData.argsAs<GamesByTypeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GamesByTypePage(
          key: args.key,
          gamesByGameType: args.gamesByGameType,
        ),
      );
    },
  };
}

/// generated route for
/// [MarketPage]
class MarketRoute extends PageRouteInfo<void> {
  const MarketRoute({List<PageRouteInfo>? children})
      : super(
          MarketRoute.name,
          initialChildren: children,
        );

  static const String name = 'MarketRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CashbackTabPage]
class CashbackTabRoute extends PageRouteInfo<void> {
  const CashbackTabRoute({List<PageRouteInfo>? children})
      : super(
          CashbackTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CashbackTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HotTabPage]
class HotTabRoute extends PageRouteInfo<void> {
  const HotTabRoute({List<PageRouteInfo>? children})
      : super(
          HotTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LiveTabPage]
class LiveTabRoute extends PageRouteInfo<void> {
  const LiveTabRoute({List<PageRouteInfo>? children})
      : super(
          LiveTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'LiveTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyEventsTabPage]
class MyEventsTabRoute extends PageRouteInfo<void> {
  const MyEventsTabRoute({List<PageRouteInfo>? children})
      : super(
          MyEventsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyEventsTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OfferTabPage]
class OfferTabRoute extends PageRouteInfo<void> {
  const OfferTabRoute({List<PageRouteInfo>? children})
      : super(
          OfferTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'OfferTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuickSearchPage]
class QuickSearchRoute extends PageRouteInfo<void> {
  const QuickSearchRoute({List<PageRouteInfo>? children})
      : super(
          QuickSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuickSearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GamesByTypePage]
class GamesByTypeRoute extends PageRouteInfo<GamesByTypeRouteArgs> {
  GamesByTypeRoute({
    Key? key,
    required GamesByGameType gamesByGameType,
    List<PageRouteInfo>? children,
  }) : super(
          GamesByTypeRoute.name,
          args: GamesByTypeRouteArgs(
            key: key,
            gamesByGameType: gamesByGameType,
          ),
          initialChildren: children,
        );

  static const String name = 'GamesByTypeRoute';

  static const PageInfo<GamesByTypeRouteArgs> page =
      PageInfo<GamesByTypeRouteArgs>(name);
}

class GamesByTypeRouteArgs {
  const GamesByTypeRouteArgs({
    this.key,
    required this.gamesByGameType,
  });

  final Key? key;

  final GamesByGameType gamesByGameType;

  @override
  String toString() {
    return 'GamesByTypeRouteArgs{key: $key, gamesByGameType: $gamesByGameType}';
  }
}
