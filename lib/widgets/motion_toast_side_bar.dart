import 'package:flutter/material.dart';
import 'package:motion_toast/resources/constants.dart';

class MotionToastSideBar extends StatelessWidget {
  final Color color;
  final double radius;

  const MotionToastSideBar({
    Key? key,
    required this.color,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: motionToastSideBarWidth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
