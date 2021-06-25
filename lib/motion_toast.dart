library motion_toast;

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:motion_toast/resources/colors.dart';
import 'package:motion_toast/resources/heart_beat_icon.dart';

// ignore: must_be_immutable
class MotionToast extends StatefulWidget {
  @override
  _MotionToastState createState() => _MotionToastState();

  MotionToast(
      {required this.icon,
      required this.description,
      required this.color,
      this.title = "",
      this.descriptionStyle = const TextStyle(color: Colors.black),
      this.titleStyle = const TextStyle(color: Colors.black),
      this.iconType,
      this.width = 250}) {
    this.motionToastType = MOTION_TOAST_TYPE.CUSTOM;
  }

  MotionToast.success(
      {required this.description,
      this.title = "",
      this.descriptionStyle = const TextStyle(color: Colors.black),
      this.titleStyle = const TextStyle(color: Colors.black),
      this.iconType = ICON_TYPE.MATERIAL_DESIGN,
      this.width = 250}) {
    this.motionToastType = MOTION_TOAST_TYPE.SUCCESS;
    if (this.iconType == ICON_TYPE.CUPERTINO) {
      this.icon = MOTION_TOAST_ICONS_CUPERTINO[motionToastType]!;
    } else {
      this.icon = MOTION_TOAST_ICONS_MD[motionToastType]!;
    }
    this.color = MOTION_TOAST_COLORS[motionToastType] ?? SUCCESS_COLOR;
  }

  MotionToast.warning(
      {required this.description,
      this.title = "",
      this.descriptionStyle = const TextStyle(color: Colors.black),
      this.titleStyle = const TextStyle(color: Colors.black),
      this.iconType = ICON_TYPE.MATERIAL_DESIGN,
      this.width = 250}) {
    this.motionToastType = MOTION_TOAST_TYPE.WARNING;
    if (this.iconType == ICON_TYPE.CUPERTINO) {
      this.icon = MOTION_TOAST_ICONS_CUPERTINO[motionToastType]!;
    } else {
      this.icon = MOTION_TOAST_ICONS_MD[motionToastType]!;
    }
    this.color = MOTION_TOAST_COLORS[motionToastType] ?? SUCCESS_COLOR;
  }

  MotionToast.error(
      {required this.description,
      this.title = "",
      this.descriptionStyle = const TextStyle(color: Colors.black),
      this.titleStyle = const TextStyle(color: Colors.black),
      this.iconType = ICON_TYPE.MATERIAL_DESIGN,
      this.width = 250}) {
    this.motionToastType = MOTION_TOAST_TYPE.ERROR;
    if (this.iconType == ICON_TYPE.CUPERTINO) {
      this.icon = MOTION_TOAST_ICONS_CUPERTINO[motionToastType]!;
    } else {
      this.icon = MOTION_TOAST_ICONS_MD[motionToastType]!;
    }
    this.color = MOTION_TOAST_COLORS[motionToastType] ?? SUCCESS_COLOR;
  }

  MotionToast.info(
      {required this.description,
      this.title = "",
      this.descriptionStyle = const TextStyle(color: Colors.black),
      this.titleStyle = const TextStyle(color: Colors.black),
      this.iconType = ICON_TYPE.MATERIAL_DESIGN,
      this.width = 250}) {
    this.motionToastType = MOTION_TOAST_TYPE.INFO;
    if (this.iconType == ICON_TYPE.CUPERTINO) {
      this.icon = MOTION_TOAST_ICONS_CUPERTINO[motionToastType]!;
    } else {
      this.icon = MOTION_TOAST_ICONS_MD[motionToastType]!;
    }
    this.color = MOTION_TOAST_COLORS[motionToastType] ?? SUCCESS_COLOR;
  }

  MotionToast.delete(
      {required this.description,
      this.title = "",
      this.descriptionStyle = const TextStyle(color: Colors.black),
      this.titleStyle = const TextStyle(color: Colors.black),
      this.iconType = ICON_TYPE.MATERIAL_DESIGN,
      this.width = 250}) {
    this.motionToastType = MOTION_TOAST_TYPE.DELETE;
    if (this.iconType == ICON_TYPE.CUPERTINO) {
      this.icon = MOTION_TOAST_ICONS_CUPERTINO[motionToastType]!;
    } else {
      this.icon = MOTION_TOAST_ICONS_MD[motionToastType]!;
    }
    this.color = MOTION_TOAST_COLORS[motionToastType] ?? SUCCESS_COLOR;
  }

  final String description;
  final String title;
  final TextStyle descriptionStyle;
  final TextStyle titleStyle;
  late MOTION_TOAST_TYPE motionToastType;
  late IconData icon;
  late Color color;
  final ICON_TYPE? iconType;
  final double width;

  show(BuildContext context) {
    showBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return this;
        });
  }
}

class _MotionToastState extends State<MotionToast> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      try {
        Navigator.pop(context);
      } catch (e) {
        print(e.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
              color: this.widget.color.withOpacity(0.3),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 15,
                decoration: BoxDecoration(
                    color: this.widget.color,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 40,
                child: HeartBeatIcon(
                    icon: this.widget.icon,
                    color: this.widget.color),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(this.widget.title, style: this.widget.titleStyle),
                  Text(
                    this.widget.description,
                    style: this.widget.descriptionStyle,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
