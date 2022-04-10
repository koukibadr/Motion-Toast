import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/resources/colors.dart';

/// The colors for the different types of motion toast.
const motionToastColors = {
  MOTION_TOAST_TYPE.success: successColor,
  MOTION_TOAST_TYPE.error: errorColor,
  MOTION_TOAST_TYPE.warning: warningColor,
  MOTION_TOAST_TYPE.info: infoColor,
  MOTION_TOAST_TYPE.delete: deleteColor
};

/// Material Icons for the different types of motion toast.
const motionToastIconsMD = {
  MOTION_TOAST_TYPE.success: Icons.check_circle_outline,
  MOTION_TOAST_TYPE.error: Icons.error,
  MOTION_TOAST_TYPE.warning: Icons.warning,
  MOTION_TOAST_TYPE.info: Icons.info,
  MOTION_TOAST_TYPE.delete: Icons.delete
};

/// Cupertino Icons for the different types of motion toast.
const motionToastIconsCupertino = {
  MOTION_TOAST_TYPE.success: CupertinoIcons.checkmark_alt_circle,
  MOTION_TOAST_TYPE.error: CupertinoIcons.exclamationmark_circle_fill,
  MOTION_TOAST_TYPE.warning: CupertinoIcons.exclamationmark_triangle_fill,
  MOTION_TOAST_TYPE.info: CupertinoIcons.info_circle_fill,
  MOTION_TOAST_TYPE.delete: CupertinoIcons.delete_simple,
};

/// Type of motion toast to show.
enum MOTION_TOAST_TYPE { success, error, warning, info, delete, custom }

/// The design of the toast.
enum ICON_TYPE { materialDesign, cupertino }

/// Text direction used to determine which direction to draw the toast
enum ORIENTATION { ltr, rtl }

/// The fade in animation direction of the toast.
enum ANIMATION { fromBottom, fromLeft, fromRight, fromTop }

/// The position of the toast on the screen.
enum MOTION_TOAST_POSITION { center, bottom, top }

/// The appearance of the background of the toast.
enum BACKGROUND_TYPE { transparent, solid, lighter }
