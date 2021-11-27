import 'package:flutter/material.dart';

class MotionToastBackground extends StatelessWidget {
  final double borderRadius;
  final Color backgroundColor;
  final Widget child;

  const MotionToastBackground({
    Key? key,
    required this.borderRadius,
    required this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.3),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          child: child,
        ),
      ],
    );
  }
}
