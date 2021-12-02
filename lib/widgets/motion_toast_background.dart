import 'package:flutter/material.dart';
import 'package:motion_toast/resources/arrays.dart';

class MotionToastBackground extends StatelessWidget {
  final double borderRadius;
  final Color backgroundColor;
  final Widget child;
  final BACKGROUND_TYPE backgroundType;

  const MotionToastBackground({
    Key? key,
    required this.borderRadius,
    required this.backgroundColor,
    required this.child,
    required this.backgroundType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (backgroundType == BACKGROUND_TYPE.lighter) {
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
          _renderWidgetChild(
            opacity: 0.4,
          )
        ],
      );
    }
    return _renderWidgetChild();
  }

  Widget _renderWidgetChild({double opacity = 0.8}) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundType == BACKGROUND_TYPE.solid
            ? backgroundColor
            : backgroundColor.withOpacity(opacity),
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
      ),
      child: child,
    );
  }
}
