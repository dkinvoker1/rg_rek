import 'package:flutter/material.dart';

class CustomTabContainer extends StatelessWidget {
  const CustomTabContainer(
      {Key? key, required this.isSelected, required this.child})
      : super(key: key);

  final bool isSelected;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: isSelected
          ? null
          : BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey.shade100, Colors.grey.shade600],
                stops: const [0.85, 1],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
      child: child,
    );
  }
}
