import 'package:flutter/material.dart';

import 'heart_beat_icon.dart';

class MotionToastIcon extends StatelessWidget {
  final double iconSize;
  final bool withAnimation;
  final IconData icon;
  final Color color;

  const MotionToastIcon({
    Key? key,
    required this.iconSize,
    required this.color,
    required this.icon,
    required this.withAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: iconSize,
      child: withAnimation
          ? HeartBeatIcon(
              icon: icon,
              color: color,
              size: iconSize,
            )
          : Icon(
              icon,
              color: color,
              size: iconSize,
            ),
    );
  }
}
