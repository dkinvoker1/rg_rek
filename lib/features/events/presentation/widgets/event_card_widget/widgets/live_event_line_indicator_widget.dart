import 'package:flutter/material.dart';

import '../../../../../../core/widgets/rounded_border_container_widget.dart';

class LiveEventLineIndicatorWidget extends StatelessWidget {
  const LiveEventLineIndicatorWidget({
    super.key,
    required this.startTime,
  });

  final DateTime startTime;

  @override
  Widget build(BuildContext context) {
    final greeen = Colors.green.shade400;

    return Row(
      children: [
        RoundedBorderContainerWidget(
          color: greeen,
          borderColor: greeen,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  '${startTime.difference(DateTime.now()).inMinutes.abs()}"',
                  style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Divider(
                  color: greeen,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey.shade100,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
        Text(
          '+',
          style: TextStyle(
            color: Colors.red.shade800,
          ),
        ),
      ],
    );
  }
}
