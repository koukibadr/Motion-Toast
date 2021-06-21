library motion_toast;

import 'dart:async';

import 'package:flutter/material.dart';

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
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    );
  }
}
