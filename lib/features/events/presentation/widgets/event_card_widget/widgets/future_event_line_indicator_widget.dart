import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FutureEventLineIndicatorWidget extends StatelessWidget {
  const FutureEventLineIndicatorWidget({
    super.key,
    required this.startTime,
  });

  final DateTime startTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          DateFormat('hh:mm').format(startTime),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
        Text(
          '+${startTime.difference(DateTime.now()).inMinutes}',
          style: TextStyle(
            color: Colors.red.shade800,
          ),
        ),
      ],
    );
  }
}
