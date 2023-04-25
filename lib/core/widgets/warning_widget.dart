import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WarningWidget extends StatelessWidget {
  const WarningWidget({
    super.key,
    required this.boldText,
    this.text = '',
  });

  final String boldText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.warning_rounded,
          color: Colors.red.shade800,
          size: 90,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          boldText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ).tr(),
        const SizedBox(
          height: 10,
        ),
        text.isEmpty
            ? const SizedBox.shrink()
            : Text(
                text,
                style: TextStyle(
                  color: Colors.grey.shade400,
                ),
              ).tr(),
      ],
    );
  }
}
