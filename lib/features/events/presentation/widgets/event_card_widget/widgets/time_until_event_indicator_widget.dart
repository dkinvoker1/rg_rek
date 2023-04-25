import 'package:flutter/material.dart';

import 'future_event_line_indicator_widget.dart';
import 'live_event_line_indicator_widget.dart';

class TimeUntilEventLineIndicatorWidget extends StatelessWidget {
  const TimeUntilEventLineIndicatorWidget({
    super.key,
    required this.startTime,
  });

  final DateTime? startTime;

  @override
  Widget build(BuildContext context) {
    return startTime == null
        ? const SizedBox.shrink()
        : startTime!.compareTo(DateTime.now()) > 0
            ? FutureEventLineIndicatorWidget(startTime: startTime!)
            : LiveEventLineIndicatorWidget(startTime: startTime!);
  }
}
