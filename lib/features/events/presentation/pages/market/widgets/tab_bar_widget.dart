import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/router/router.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        OfferTabRoute(),
        MyEventsTabRoute(),
        LiveTabRoute(),
        HotTabRoute(),
        CashbackTabRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          appBar: TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: Color(0xDD613896), width: 4.0),
              insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
            ),
            controller: tabController,
            tabs: [
              Tab(text: 'offer'.tr()),
              Tab(text: 'my'.tr()),
              Tab(text: 'live'.tr()),
              Tab(text: 'hot'.tr()),
              Tab(text: 'cashback'.tr()),
            ],
          ),
          body: child,
        );
      },
    );
  }
}
