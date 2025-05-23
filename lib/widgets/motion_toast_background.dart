import 'package:flutter/material.dart';

class MotionToastBackground extends StatelessWidget {
  final double borderRadius;
  final Color backgroundColor;
  final Widget child;
  final Color borderColor;
  final bool displayBorder;
  final Brightness brightness;
  final double opacity;

  const MotionToastBackground({
    Key? key,
    required this.borderRadius,
    required this.backgroundColor,
    required this.child,
    required this.borderColor,
    required this.displayBorder,
    required this.brightness,
    required this.opacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor.withValues(
          alpha: opacity,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        border: displayBorder
            ? Border.all(
                width: 1,
                color: borderColor,
              )
            : null,
      ),
      child: child,
    );
  }
}
