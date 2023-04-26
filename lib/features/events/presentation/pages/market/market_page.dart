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
        children: [
          const HeaderWidget(),
          const SearchWidget(),
          Flexible(
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                const TabBarWidget(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      'assets/images/calendar.png',
                      height: 58,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
