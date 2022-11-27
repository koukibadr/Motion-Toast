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
    required this.withAnimation,
    bool isReversed = false,
  }) : super(key: key) {
    _contentLayoutType = ContentLayoutType.values[isReversed ? 1 : 0];
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
  final IconData? icon;

  /// Set to `true` to show animation of the toast.
  final bool withAnimation;

  /// Title [Text] widget of the toast.
  final Widget? title;

  /// Description [Text] widget of the toast.
  final Widget description;

  @override
  Widget build(BuildContext context) {
    if (_contentLayoutType == ContentLayoutType.reversed) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Seperator.double(10),
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (title != null) title!,
                  description,
                ],
              ),
            ),
          ),
          if (icon != null)
            Row(
              children: [
                const Seperator.double(15),
                MotionToastIcon(
                  iconSize: iconSize,
                  color: color,
                  icon: icon!,
                  withAnimation: withAnimation,
                ),
              ],
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
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        MotionToastSideBar(
          color: color,
          radius: radius,
        ),
        const Seperator.double(15),
        if (icon != null)
          Row(
            children: [
              MotionToastIcon(
                iconSize: iconSize,
                color: color,
                icon: icon!,
                withAnimation: withAnimation,
              ),
              const Seperator.double(15),
            ],
          ),
        Flexible(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (title != null) title!,
                description,
              ],
            ),
          ),
        ),
        const Seperator.double(7),
      ],
    );
  }
}
