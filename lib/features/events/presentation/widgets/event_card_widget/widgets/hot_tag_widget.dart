import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/rounded_border_container_widget.dart';

class HotTagWidget extends StatelessWidget {
  const HotTagWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedBorderContainerWidget(
      color: Colors.red.shade800,
      borderColor: Colors.red.shade800,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            const Icon(
              CupertinoIcons.flame,
              size: 8,
              color: Colors.white,
            ),
            const Text(
              'hot',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
            ).tr(),
          ],
        ),
      ),
    );
  }
}
