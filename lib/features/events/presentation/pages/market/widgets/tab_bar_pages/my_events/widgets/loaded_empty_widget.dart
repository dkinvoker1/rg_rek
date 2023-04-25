import 'package:flutter/material.dart';

import '../../../../../../../../../core/widgets/warning_widget.dart';

class LoadedEmptyWidget extends StatelessWidget {
  const LoadedEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: WarningWidget(
        boldText: 'no_results',
      ),
    );
  }
}
