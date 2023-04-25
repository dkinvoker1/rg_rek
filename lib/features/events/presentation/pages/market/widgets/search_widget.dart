import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/router/router.dart';
import '../../../../../../core/widgets/rounded_border_container_widget.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: InkWell(
        onTap: () {
          context.pushRoute(
            const QuickSearchRoute(),
          );
        },
        child: RoundedBorderContainerWidget(
          radius: 8,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey.shade400,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'what_are_you_looking_for',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ).tr(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
