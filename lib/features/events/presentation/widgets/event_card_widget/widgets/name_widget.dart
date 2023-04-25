import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../pages/market/widgets/tab_bar_pages/my_events/bloc/my_events_bloc.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key, required this.data}) : super(key: key);

  final GameCardData data;

  @override
  Widget build(BuildContext context) {
    if (data.eventStart == null ||
        data.eventStart!.compareTo(DateTime.now()) < 0) {
      return Text(data.category3Name);
    } else {
      return Text(
        "${data.category3Name} ${DateFormat('dd.MM').format(data.eventStart!)}",
      );
    }
  }
}
