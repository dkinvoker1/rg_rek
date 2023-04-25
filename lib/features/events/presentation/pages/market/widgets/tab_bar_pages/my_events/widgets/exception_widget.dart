import 'package:flutter/material.dart';

import '../../../../../../../../../core/widgets/warning_widget.dart';

class ExceptionWidget extends StatelessWidget {
  const ExceptionWidget({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: WarningWidget(
        boldText: message,
      ),
    );
  }
}
