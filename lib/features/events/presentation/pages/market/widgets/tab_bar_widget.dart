import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/router/router.dart';
import '../../../../../../core/widgets/custom_tab_container.dart';

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
              borderSide: BorderSide(color: Colors.transparent),
            ),
            labelPadding: EdgeInsets.zero,
            controller: tabController,
            tabs: [
              CustomTabContainer(
                isSelected: tabController.index == 0,
                child: Tab(text: 'offer'.tr()),
              ),
              CustomTabContainer(
                isSelected: tabController.index == 1,
                child: Tab(text: 'my'.tr()),
              ),
              CustomTabContainer(
                isSelected: tabController.index == 2,
                child: Row(
                  children: [
                    Tab(text: 'live'.tr()),
                    const SizedBox(
                      width: 4,
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.green.shade400,
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                ),
              ),
              CustomTabContainer(
                isSelected: tabController.index == 3,
                child: Tab(text: 'hot'.tr()),
              ),
              CustomTabContainer(
                isSelected: tabController.index == 4,
                child: Tab(text: 'cashback'.tr()),
              ),
            ],
          ),
          body: child,
        );
      },
    );
  }
}
