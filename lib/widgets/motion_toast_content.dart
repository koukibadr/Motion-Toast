import 'package:flutter/material.dart';
import 'package:motion_toast/widgets/seperator.dart';

import 'motion_toast_icon.dart';
import 'motion_toast_side_bar.dart';

/// Flow of the contents in the motion toast.
enum ContentLayoutType { normal, reversed }

class MotionToastContent extends StatelessWidget {
  MotionToastContent({
    Key? key,
    required this.color,
    required this.description,
    required this.icon,
    required this.iconSize,
    required this.radius,
    required this.title,
    required this.width,
    required this.withAnimation,
  }) : super(key: key) {
    _contentLayoutType = ContentLayoutType.normal;
  }
  MotionToastContent.reversed({
    Key? key,
    required this.color,
    required this.description,
    required this.icon,
    required this.iconSize,
    required this.radius,
    required this.title,
    required this.width,
    required this.withAnimation,
  }) : super(key: key) {
    _contentLayoutType = ContentLayoutType.reversed;
  }

  /// The flow of the contents in the motion toast.
  late final ContentLayoutType _contentLayoutType;

  /// The color of the toast background.
  final Color color;

  /// Border radius of the toast.
  final double radius;

  /// Size of the toast icon.
  final double iconSize;

  /// Icon to display on the toast.
  final IconData icon;

  /// Set to `true` to show animation of the toast.
  final bool withAnimation;

  /// Title [Text] widget of the toast.
  final Widget? title;

  /// Width of the toast.
  final double width;

  /// Description [Text] widget of the toast.
  final Widget description;

  @override
  Widget build(BuildContext context) {
    if (_contentLayoutType == ContentLayoutType.reversed) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const Seperator.double(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (title != null) title!,
                description,
              ],
            ),
          ),
          const Seperator.double(15),
          MotionToastIcon(
            iconSize: iconSize,
            color: color,
            icon: icon,
            withAnimation: withAnimation,
          ),
          const Seperator.double(15),
          MotionToastSideBar(
            color: color,
            radius: radius,
          ),
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        MotionToastSideBar(
          color: color,
          radius: radius,
        ),
        const Seperator.double(15),
        MotionToastIcon(
          iconSize: iconSize,
          color: color,
          icon: icon,
          withAnimation: withAnimation,
        ),
        const Seperator.double(15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (title != null) title!,
              description,
            ],
          ),
        ),
        const Seperator.double(10),
      ],
    );
  }
}
