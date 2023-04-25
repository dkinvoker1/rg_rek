import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

@RoutePage()
class MarketPage extends StatelessWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          HeaderWidget(),
          SearchWidget(),
          Flexible(
            child: TabBarWidget(),
          ),
        ],
      ),
    );
  }
}
