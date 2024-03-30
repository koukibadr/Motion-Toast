import 'package:flutter/material.dart';
import 'package:motion_toast/resources/arrays.dart';

/// Widget that renders a motion toast background
class MotionToastBackground extends StatelessWidget {
  final double borderRadius;
  final Color backgroundColor;
  final Widget child;
  final BackgroundType backgroundType;
  final Color borderColor;
  final bool displayBorder;
  final Brightness brightness;
  final EdgeInsets contentPadding;

  const MotionToastBackground({
    Key? key,
    required this.borderRadius,
    required this.backgroundColor,
    required this.child,
    required this.backgroundType,
    required this.borderColor,
    required this.displayBorder,
    required this.brightness,
    required this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (backgroundType == BackgroundType.lighter) {
      return Container(
        decoration: BoxDecoration(
          color: brightness == Brightness.light ? Colors.white : Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        child: _renderWidgetChild(opacity: 0.4),
      );
    }
    return _renderWidgetChild();
  }

  Widget _renderWidgetChild({double opacity = 0.8}) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundType == BackgroundType.solid
            ? backgroundColor
            : backgroundColor.withOpacity(opacity),
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
      child: Padding(
        padding: contentPadding,
        child: child,
      ),
    );
  }
}
