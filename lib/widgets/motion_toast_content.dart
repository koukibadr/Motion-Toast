import 'package:flutter/material.dart';
import 'package:motion_toast/widgets/seperator.dart';

import 'motion_toast_icon.dart';
import 'motion_toast_side_bar.dart';

enum CONTENT_LAYOUT_TYPE { normal, reversed }

// ignore: must_be_immutable
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
    contentLayoutType = CONTENT_LAYOUT_TYPE.normal;
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
    contentLayoutType = CONTENT_LAYOUT_TYPE.reversed;
  }

  late CONTENT_LAYOUT_TYPE contentLayoutType;

  final Color color;
  final double radius;
  final double iconSize;
  final IconData icon;
  final bool withAnimation;
  final Text? title;
  final double width;
  final Text description;

  @override
  Widget build(BuildContext context) {
    if (contentLayoutType == CONTENT_LAYOUT_TYPE.reversed) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (title != null)
                title!,
              SizedBox(
                width: width * 0.7,
                child: description,
              ),
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
            if (title != null)
                title!,
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
