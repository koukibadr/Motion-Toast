import 'package:flutter/material.dart';

class MotionToastSideBar extends StatelessWidget {
  /// The color of the background.
  final Color color;

  /// Radius of the toast side bar.
  final double radius;

  const MotionToastSideBar({
    Key? key,
    required this.color,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
