import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/resources/colors.dart';

/// The colors for the different types of motion toast.
const motionToastColors = {
  MotionToastType.success: successColor,
  MotionToastType.error: errorColor,
  MotionToastType.warning: warningColor,
  MotionToastType.info: infoColor,
  MotionToastType.delete: deleteColor
};

/// Material Icons for the different types of motion toast.
const motionToastIconsMD = {
  MotionToastType.success: Icons.check_circle_outline,
  MotionToastType.error: Icons.error,
  MotionToastType.warning: Icons.warning,
  MotionToastType.info: Icons.info,
  MotionToastType.delete: Icons.delete
};

/// Cupertino Icons for the different types of motion toast.
const motionToastIconsCupertino = {
  MotionToastType.success: CupertinoIcons.checkmark_alt_circle,
  MotionToastType.error: CupertinoIcons.exclamationmark_circle_fill,
  MotionToastType.warning: CupertinoIcons.exclamationmark_triangle_fill,
  MotionToastType.info: CupertinoIcons.info_circle_fill,
  MotionToastType.delete: CupertinoIcons.delete_simple,
};

/// Type of motion toast to show.
enum MotionToastType { success, error, warning, info, delete, custom }

/// The design of the toast.
enum IconType { materialDesign, cupertino }

/// Text direction used to determine which direction to draw the toast
enum ToastOrientation { ltr, rtl }

/// The fade in animation direction of the toast.
enum AnimationType { fromBottom, fromLeft, fromRight, fromTop }

/// The position of the toast on the screen.
enum MotionToastPosition { center, bottom, top }

/// The appearance of the background of the toast.
enum BackgroundType { transparent, solid, lighter }
