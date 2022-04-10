import 'package:flutter/material.dart';
import 'package:motion_toast/widgets/seperator.dart';

import 'motion_toast_icon.dart';
import 'motion_toast_side_bar.dart';

/// Flow of the contents in the motion toast.
enum CONTENT_LAYOUT_TYPE { normal, reversed }

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
    _contentLayoutType = CONTENT_LAYOUT_TYPE.normal;
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
    _contentLayoutType = CONTENT_LAYOUT_TYPE.reversed;
  }

  /// The flow of the contents in the motion toast.
  late final CONTENT_LAYOUT_TYPE _contentLayoutType;

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
  final Text? title;

  /// Width of the toast.
  final double width;

  /// Description [Text] widget of the toast.
  final Text description;

  @override
  Widget build(BuildContext context) {
    if (_contentLayoutType == CONTENT_LAYOUT_TYPE.reversed) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (title != null) title!,
              description,
            ],
          ),
          const Seperator.double(10),
          MotionToastIcon(
            iconSize: iconSize,
            color: color,
            icon: icon,
            withAnimation: withAnimation,
          ),
          const Seperator.double(20),
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
        const Seperator.double(20),
        MotionToastIcon(
          iconSize: iconSize,
          color: color,
          icon: icon,
          withAnimation: withAnimation,
        ),
        const Seperator.double(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (title != null) title!,
            SizedBox(
              width: width * 0.7,
              child: description,
            ),
          ],
        )
      ],
    );
  }
}
