library motion_toast;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:motion_toast/resources/colors.dart';

class MotionToast extends StatefulWidget {
  @override
  _MotionToastState createState() => _MotionToastState();

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
  Color toastColor = DELETE_COLOR;

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
      height: 150,
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: 250,
          height: 100,
          decoration: BoxDecoration(
              color: toastColor.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 30,
                decoration: BoxDecoration(
                    color: toastColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.ac_unit_outlined),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Title"),
                  Text("Description"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
