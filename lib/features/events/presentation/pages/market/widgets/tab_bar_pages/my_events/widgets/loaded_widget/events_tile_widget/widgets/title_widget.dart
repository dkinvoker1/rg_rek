import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../../../core/widgets/rounded_border_container_widget.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.categoryName,
    required this.gamesCount,
  });

  final String categoryName;
  final int gamesCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          categoryName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ).tr(),
        const SizedBox(
          width: 8,
        ),
        RoundedBorderContainerWidget(
          color: Colors.blueGrey.shade100,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              gamesCount.toString(),
            ),
          ),
        ),
      ],
    );
  }
}
