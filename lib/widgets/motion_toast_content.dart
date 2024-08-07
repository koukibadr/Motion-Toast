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
    required this.displaySideBar,
    required this.contentPadding,
    bool isReversed = false,
  }) : super(key: key) {
    _contentLayoutType = ContentLayoutType.values[isReversed ? 1 : 0];
  }

  late final ContentLayoutType _contentLayoutType;
  final EdgeInsetsGeometry contentPadding;
  final Color color;
  final double radius;
  final double iconSize;
  final IconData? icon;
  final bool withAnimation;
  final Widget? title;
  final Widget description;

  final bool displaySideBar;

  @override
  Widget build(BuildContext context) {
    if (_contentLayoutType == ContentLayoutType.reversed) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: contentPadding,
              child: Row(
                children: [
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
                ],
              ),
            ),
          ),
          if (displaySideBar)
            Row(
              children: [
                const Seperator.double(15),
                MotionToastSideBar(
                  color: color,
                  radius: radius,
                ),
              ],
            ),
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (displaySideBar)
          Row(
            children: [
              MotionToastSideBar(
                color: color,
                radius: radius,
              ),
            ],
          ),
        Expanded(
          child: Padding(
            padding: contentPadding,
            child: Row(
              children: [
                if (icon != null)
                  MotionToastIcon(
                    iconSize: iconSize,
                    color: color,
                    icon: icon!,
                    withAnimation: withAnimation,
                  ),
                Flexible(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 5,
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
