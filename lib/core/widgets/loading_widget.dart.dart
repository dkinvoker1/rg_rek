import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.sync,
          color: Colors.grey.shade300,
          size: 90,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'give_us_a_sec',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ).tr(),
        const SizedBox(
          height: 10,
        ),
        Text(
          'searching_in_database',
          style: TextStyle(
            color: Colors.grey.shade400,
          ),
        ).tr(),
      ],
    );
  }
}
