import 'package:flutter/material.dart';
import 'package:motion_toast/resources/arrays.dart';

extension MotionToastPositionExtensions on MotionToastPosition {
  Alignment get alignment {
    if (this == MotionToastPosition.top) {
      return Alignment.topCenter;
    } else if (this == MotionToastPosition.bottom) {
      return Alignment.bottomCenter;
    } else {
      return Alignment.center;
    }
  }
}
