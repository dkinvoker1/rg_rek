import 'package:flutter/material.dart';

class RoundedBorderContainerWidget extends StatelessWidget {
  const RoundedBorderContainerWidget({
    Key? key,
    required this.child,
    this.radius = 200,
    this.color = Colors.white,
    this.borderColor,
  }) : super(key: key);

  final Widget child;
  final double radius;
  final Color color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
          color: color),
      child: child,
    );
  }
}
