library motion_toast;

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:motion_toast/resources/colors.dart';

// ignore: must_be_immutable
class MotionToast extends StatefulWidget {
  @override
  _MotionToastState createState() => _MotionToastState();

  MotionToast(
      {this.description = "",
      this.title = "",
      this.descriptionStyle = const TextStyle(color: Colors.black),
      this.titleStyle = const TextStyle(color: Colors.black)}) {
    this.motionToastType = MOTION_TOAST_TYPE.CUSTOM;
  }

  MotionToast.success(
      {required this.description,
      this.title = "",
      this.descriptionStyle = const TextStyle(color: Colors.black),
      this.titleStyle = const TextStyle(color: Colors.black)}) {
    this.motionToastType = MOTION_TOAST_TYPE.SUCCESS;
  }

  final String description;
  final String title;
  final TextStyle descriptionStyle;
  final TextStyle titleStyle;
  late MOTION_TOAST_TYPE motionToastType;

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
  late Color toastColor;
  late IconData toastIcon;

  @override
  void initState() {
    super.initState();
    _initializeToast();
    Timer(Duration(seconds: 3), () {
      try {
        Navigator.pop(context);
      } catch (e) {
        print(e.toString());
      }
    });
  }

  _initializeToast() {
    if (this.widget.motionToastType != MOTION_TOAST_TYPE.CUSTOM) {
      toastIcon = MOTION_TOAST_ICONS_CUPERTINO[this.widget.motionToastType]!;
    } else {
      //TODO Get icon from constructor
    }
    switch (this.widget.motionToastType) {
      case MOTION_TOAST_TYPE.SUCCESS:
        toastColor = SUCCESS_COLOR;
        break;
      case MOTION_TOAST_TYPE.ERROR:
        toastColor = ERROR_COLOR;
        break;
      case MOTION_TOAST_TYPE.WARNING:
        toastColor = WARNING_COLOR;
        break;
      case MOTION_TOAST_TYPE.INFO:
        toastColor = INFO_COLOR;
        break;
      case MOTION_TOAST_TYPE.DELETE:
        toastColor = DELETE_COLOR;
        break;
      default:
        toastColor = SUCCESS_COLOR;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: 250,
          height: 100,
          decoration: BoxDecoration(
              color: toastColor.withOpacity(0.3),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 15,
                decoration: BoxDecoration(
                    color: toastColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(toastIcon, color: this.toastColor),
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
