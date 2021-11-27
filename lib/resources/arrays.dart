import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/resources/colors.dart';

const motionToastColors = {
  MOTION_TOAST_TYPE.success: successColor,
  MOTION_TOAST_TYPE.error: errorColor,
  MOTION_TOAST_TYPE.warning: warningColor,
  MOTION_TOAST_TYPE.info: infoColor,
  MOTION_TOAST_TYPE.delete: deleteColor
};

const motionToastIconsMD = {
  MOTION_TOAST_TYPE.success: Icons.check_circle_outline,
  MOTION_TOAST_TYPE.error: Icons.error,
  MOTION_TOAST_TYPE.warning: Icons.warning,
  MOTION_TOAST_TYPE.info: Icons.info,
  MOTION_TOAST_TYPE.delete: Icons.delete
};

const motionToastIconsCupertino = {
  MOTION_TOAST_TYPE.success: CupertinoIcons.checkmark_alt_circle,
  MOTION_TOAST_TYPE.error: CupertinoIcons.exclamationmark_circle_fill,
  MOTION_TOAST_TYPE.warning: CupertinoIcons.exclamationmark_triangle_fill,
  MOTION_TOAST_TYPE.info: CupertinoIcons.info_circle_fill,
  MOTION_TOAST_TYPE.delete: CupertinoIcons.delete_simple,
};

enum MOTION_TOAST_TYPE { success, error, warning, info, delete, custom }

enum ICON_TYPE { materialDesign, cupertino }

enum ORIENTATION { ltr, rtl }

enum ANIMATION { fromBottom, fromLeft, fromRight, fromTop }

enum MOTION_TOAST_POSITION { center, bottom, top }
