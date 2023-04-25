import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/widgets/warning_widget.dart';

@RoutePage()
class OfferTabPage extends StatelessWidget {
  const OfferTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        WarningWidget(
          boldText: 'unimplemented_tab',
        ),
      ],
    );
  }
}
