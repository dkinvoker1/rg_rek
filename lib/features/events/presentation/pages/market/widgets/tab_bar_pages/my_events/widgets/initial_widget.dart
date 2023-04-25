import 'package:flutter/material.dart';

import '../../../../../../../../../core/widgets/loading_widget.dart.dart';

class InitialWidget extends StatelessWidget {
  const InitialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: LoadingWidget(),
    );
  }
}
