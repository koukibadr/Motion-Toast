library motion_toast;

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:motion_toast/resources/colors.dart';
import 'package:motion_toast/widgets/motion_toast_background.dart';
import 'package:motion_toast/widgets/motion_toast_content.dart';

/// Render the motion toast widget
class MotionToast extends StatefulWidget {
  @override
  State<MotionToast> createState() => _MotionToastState();

  /// Used to create a custom motion toast with given [icon], [description] and  [primaryColor]
  MotionToast({
    Key? key,
    required this.icon,
    required this.description,
    required this.primaryColor,
    this.title,
    this.width,
    this.height,
    this.constraints,
    this.iconSize = 40,
    this.enableAnimation = true,
    this.layoutOrientation = ToastOrientation.ltr,
    this.animationType = AnimationType.fromBottom,
    this.animationDuration = const Duration(
      milliseconds: 1500,
    ),
    this.toastDuration = const Duration(
      seconds: 3,
    ),
    this.animationCurve = Curves.ease,
    this.position = MotionToastPosition.bottom,
    this.borderRadius = 20,
    this.onClose,
    this.dismissable = true,
    this.secondaryColor,
    this.backgroundType = BackgroundType.lighter,
    this.barrierColor = Colors.transparent,
  }) : super(key: key) {
    _assertValidValues();
    motionToastType = MotionToastType.custom;
    iconType = IconType.materialDesign;
  }

  /// Render a success motion toast
  /// [primaryColor] is set to [successColor]
  /// [icon] is set to `MOTION_TOAST_ICONS_MD[MOTION_TOAST_TYPE.SUCCESS]`
  /// or `MOTION_TOAST_ICONS_CUPERTINO[MOTION_TOAST_TYPE.SUCCESS]`
  /// [description] is required
  ///
  /// the text style by default: `TextStyle(color: Colors.black)`
  MotionToast.success({
    Key? key,
    required this.description,
    this.title,
    this.iconType = IconType.materialDesign,
    this.width,
    this.height,
    this.constraints,
    this.iconSize = 40,
    this.enableAnimation = true,
    this.layoutOrientation = ToastOrientation.ltr,
    this.animationType = AnimationType.fromBottom,
    this.animationDuration = const Duration(
      milliseconds: 1500,
    ),
    this.toastDuration = const Duration(
      seconds: 3,
    ),
    this.animationCurve = Curves.ease,
    this.position = MotionToastPosition.bottom,
    this.borderRadius = 20,
    this.onClose,
    this.dismissable = true,
    this.barrierColor = Colors.transparent,
  }) : super(key: key) {
    motionToastType = MotionToastType.success;
    _assertValidValues();
    _initializeParameters();
  }

  /// Render a warning motion toast
  /// [primaryColor] is set to [warningColor]
  /// [icon] is set to `MOTION_TOAST_ICONS_MD[MOTION_TOAST_TYPE.WARNING]`
  /// or `MOTION_TOAST_ICONS_CUPERTINO[MOTION_TOAST_TYPE.WARNING]`
  /// [description] is required
  ///
  /// the text style by default: `TextStyle(color: Colors.black)`
  MotionToast.warning({
    Key? key,
    required this.description,
    this.title,
    this.iconType = IconType.materialDesign,
    this.width = 350,
    this.height = 80,
    this.constraints,
    this.iconSize = 40,
    this.enableAnimation = true,
    this.layoutOrientation = ToastOrientation.ltr,
    this.animationType = AnimationType.fromBottom,
    this.animationDuration = const Duration(
      milliseconds: 1500,
    ),
    this.toastDuration = const Duration(
      seconds: 3,
    ),
    this.animationCurve = Curves.ease,
    this.position = MotionToastPosition.bottom,
    this.borderRadius = 20,
    this.onClose,
    this.dismissable = true,
    this.barrierColor = Colors.transparent,
  }) : super(key: key) {
    motionToastType = MotionToastType.warning;
    _assertValidValues();
    _initializeParameters();
  }

  /// Render an error motion toast
  /// [primaryColor] is set to [errorColor]
  /// [icon] is set to `MOTION_TOAST_ICONS_MD[MOTION_TOAST_TYPE.ERROR]`
  /// or `MOTION_TOAST_ICONS_CUPERTINO[MOTION_TOAST_TYPE.ERROR]`
  /// [description] is required
  ///
  /// the text style by default: `TextStyle(color: Colors.black)`
  MotionToast.error({
    Key? key,
    required this.description,
    this.title,
    this.iconType = IconType.materialDesign,
    this.width = 350,
    this.height = 80,
    this.constraints,
    this.iconSize = 40,
    this.enableAnimation = true,
    this.layoutOrientation = ToastOrientation.ltr,
    this.animationType = AnimationType.fromBottom,
    this.animationDuration = const Duration(
      milliseconds: 1500,
    ),
    this.toastDuration = const Duration(
      seconds: 3,
    ),
    this.animationCurve = Curves.ease,
    this.position = MotionToastPosition.bottom,
    this.borderRadius = 20,
    this.onClose,
    this.dismissable = true,
    this.barrierColor = Colors.transparent,
  }) : super(key: key) {
    motionToastType = MotionToastType.error;
    _assertValidValues();
    _initializeParameters();
  }

  /// Render Info motion toast
  /// [primaryColor] is set to [infoColor]
  /// [icon] is set to `MOTION_TOAST_ICONS_MD[MOTION_TOAST_TYPE.INFO]`
  /// or `MOTION_TOAST_ICONS_CUPERTINO[MOTION_TOAST_TYPE.INFO]`
  /// [description] is required
  ///
  /// the text style by default: `TextStyle(color: Colors.black)`
  MotionToast.info({
    Key? key,
    required this.description,
    this.title,
    this.iconType = IconType.materialDesign,
    this.width = 350,
    this.height = 80,
    this.constraints,
    this.iconSize = 40,
    this.enableAnimation = true,
    this.layoutOrientation = ToastOrientation.ltr,
    this.animationType = AnimationType.fromBottom,
    this.animationDuration = const Duration(
      milliseconds: 1500,
    ),
    this.toastDuration = const Duration(
      seconds: 3,
    ),
    this.animationCurve = Curves.ease,
    this.position = MotionToastPosition.bottom,
    this.borderRadius = 20,
    this.onClose,
    this.dismissable = true,
    this.barrierColor = Colors.transparent,
  }) : super(key: key) {
    motionToastType = MotionToastType.info;
    _assertValidValues();
    _initializeParameters();
  }

  /// Render delete motion toast
  /// [primaryColor] is set to [deleteColor]
  /// [icon] is set to `MOTION_TOAST_ICONS_MD[MOTION_TOAST_TYPE.DELETE]`
  /// or `MOTION_TOAST_ICONS_CUPERTINO[MOTION_TOAST_TYPE.DELETE]`
  /// [description] is required
  ///
  /// the text style by default: `TextStyle(color: Colors.black)`
  MotionToast.delete({
    Key? key,
    required this.description,
    this.title,
    this.iconType = IconType.materialDesign,
    this.width = 350,
    this.height = 80,
    this.constraints,
    this.iconSize = 40,
    this.enableAnimation = true,
    this.layoutOrientation = ToastOrientation.ltr,
    this.animationType = AnimationType.fromBottom,
    this.animationDuration = const Duration(
      milliseconds: 1500,
    ),
    this.toastDuration = const Duration(
      seconds: 3,
    ),
    this.animationCurve = Curves.ease,
    this.position = MotionToastPosition.bottom,
    this.borderRadius = 20,
    this.onClose,
    this.dismissable = true,
    this.barrierColor = Colors.transparent,
  }) : super(key: key) {
    motionToastType = MotionToastType.delete;
    _assertValidValues();
    _initializeParameters();
  }

  /// initialize [icon] and [primaryColor] based on the selected [motionToastType]
  void _initializeParameters() {
    if (iconType == IconType.cupertino) {
      icon = motionToastIconsCupertino[motionToastType]!;
    } else {
      icon = motionToastIconsMD[motionToastType]!;
    }
    primaryColor = motionToastColors[motionToastType]!;
    secondaryColor = motionToastColors[motionToastType]!;
    backgroundType = BackgroundType.lighter;
  }

  /// assert valid values when creating a motion toast widget
  void _assertValidValues() {
    if (width != null || height != null) {
      assert(
        width != null && height != null,
        'You need to provide both width and height or use constraints attribute',
      );
    }
    assert(
      (position == MotionToastPosition.bottom &&
              animationType != AnimationType.fromTop) ||
          (position == MotionToastPosition.top &&
              animationType != AnimationType.fromBottom) ||
          (position == MotionToastPosition.center),
    );
  }

  /// the text widget used for description message
  final Widget description;

  /// The title of the motion toast
  /// if it's null it will not be rendered in the widget
  final Widget? title;

  /// The motion toast type possible values:
  /// ```dart
  /// {
  ///  sucess
  ///  error
  ///  warning
  ///  info
  ///  delete
  ///  custom
  /// }
  /// ```
  late final MotionToastType motionToastType;

  /// The motion toast icon, for types other than custom
  /// the icon will get the default type icon
  ///
  /// if [motionToastType] set to [MotionToastType.custom] the icon parameter is required
  late final IconData icon;

  /// The motion toast background color
  /// if `motionToastType == MOTION_TOAST_TYPE.CUSTOM` color parameter is required
  /// else the color will get the default type color from [motionToastColors]
  ///
  late final Color primaryColor;

  /// Color applied on the motion toast side widget (sidebar) and the icon
  /// if it's null secondary color will be the primary color
  /// can be customized when using the default constructor
  late final Color? secondaryColor;

  /// the type  of the background that will be applied on the motion toast content
  /// available values:
  /// - solid: the primary color will be applied as it is on the content background
  /// - transparent: an opacity will be added to the primary color
  /// - lighter: a white background added to the motion toast with little opacity added to the primary color
  late final BackgroundType backgroundType;

  /// The design type icon (Material design or Cupertino)
  /// if [motionToastType] set to [MOTION_TOAST_TYPE.CUSTOM] [iconType] will not be used
  /// possible values
  /// ```dart
  /// {
  /// MATERIAL_DESIGN,
  /// CUPERTINO
  /// }
  /// ```
  late final IconType? iconType;

  /// The motion toast width by default it's set to 250
  final double? width;

  /// define the height of the motion toast
  final double? height;

  /// The constraint of the motion toast to size itself to the content
  /// for responsive design
  ///
  /// If it's `null`, then [width] and [height] will be used as it is.
  final BoxConstraints? constraints;

  /// the motion toast icon size
  /// by default it's 40
  final double iconSize;

  /// disable or enable the heartbeat animation on the icon
  /// by default the animation is enabled
  final bool enableAnimation;

  /// The layout ToastOrientation (from right to left or from left to right)
  /// ```dart
  /// {
  /// LTR,
  /// RTL
  /// }
  /// ```
  final ToastOrientation layoutOrientation;

  /// The type of animation, by default it's [AnimationType.fromBottom]
  /// ```dart
  /// {
  /// FROM_BOTTOM,
  /// FROM_LEFT,
  /// FROM_RIGHT
  /// }
  /// ```
  final AnimationType animationType;

  /// the Duration of the toast animation
  /// by default it's 1.5 seconds
  final Duration animationDuration;

  /// How long the toast will be shown
  /// by default it's 3 seconds.
  final Duration toastDuration;

  /// The toast animation curve
  /// by default it's `Curves.ease`
  final Curve animationCurve;

  /// The position where the motion toast will be displayed
  /// possible values
  /// ```dart
  /// {
  /// CENTER,
  /// TOP,
  /// BOTTOM
  /// }
  /// ```
  final MotionToastPosition position;

  /// Define the border radius of the toast
  /// by default it's 20
  final double borderRadius;

  /// Function invoked when the toast is closed
  final Function? onClose;

  /// define whether the motion toast can be dismissed or not
  /// applied on bottom motion toast
  final bool dismissable;

  /// The barrier color applied to the dialog display
  /// by default the barrier is transparent [Colors.transparent]
  final Color barrierColor;

  /// Display the created motion toast based on the [position] attribute
  /// [context]: the actual context of the application
  void show(BuildContext context) {
    switch (position) {
      case MotionToastPosition.center:
      case MotionToastPosition.top:
        Navigator.of(context).push(
          PageRouteBuilder<Widget>(
            fullscreenDialog: false,
            barrierColor: barrierColor,
            pageBuilder: (BuildContext context, _, __) => this,
            opaque: false,
            barrierDismissible: dismissable,
          ),
        );
        break;
      default:
        showModalBottomSheet(
          isDismissible: dismissable,
          backgroundColor: Colors.transparent,
          constraints: BoxConstraints(
            maxHeight: (height ?? constraints?.maxHeight ?? 100) * 1.3,
          ),
          barrierColor: barrierColor,
          context: context,
          builder: (_) => this,
        );
    }
  }
}

class _MotionToastState extends State<MotionToast>
    with TickerProviderStateMixin {
  late Animation<Offset> offsetAnimation;
  late AnimationController slideController;
  late Timer toastTimer;

  @override
  void initState() {
    super.initState();
    _initializeAnimation();
    toastTimer = Timer(
      widget.toastDuration,
      () {
        slideController.dispose();
        Navigator.of(context).pop();
        toastTimer.cancel();
        widget.onClose?.call();
      },
    );
  }

  /// initialize the animation that will be applied when displaying the toast
  ///  based on [this.widget.animationDuration], [this.widget.animationType] and [this.widge]
  ///
  void _initializeAnimation() {
    slideController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    var curveAnimation = CurvedAnimation(
      parent: slideController,
      curve: widget.animationCurve,
    );

    switch (widget.animationType) {
      case AnimationType.fromLeft:
        if (widget.position == MotionToastPosition.top) {
          offsetAnimation = Tween<Offset>(
            begin: const Offset(-0.3, 0.3),
            end: const Offset(0, 0.3),
          ).animate(curveAnimation);
        } else {
          offsetAnimation = Tween<Offset>(
            begin: const Offset(-0.3, -0.3),
            end: const Offset(0, -0.3),
          ).animate(curveAnimation);
        }
        break;
      case AnimationType.fromRight:
        if (widget.position == MotionToastPosition.top) {
          offsetAnimation = Tween<Offset>(
            begin: const Offset(0.5, 0.3),
            end: const Offset(0, 0.3),
          ).animate(curveAnimation);
        } else {
          offsetAnimation = Tween<Offset>(
            begin: const Offset(1.3, -0.3),
            end: const Offset(0, -0.3),
          ).animate(curveAnimation);
        }
        break;
      case AnimationType.fromTop:
        offsetAnimation = Tween<Offset>(
          begin: const Offset(0, -0.3),
          end: const Offset(0, 0.3),
        ).animate(curveAnimation);
        break;
      default:
        offsetAnimation = Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, -0.3),
        ).animate(curveAnimation);
    }

    /// ! To support Flutter < 3.0.0
    /// This allows a value of type T or T?
    /// to be treated as a value of type T?.
    ///
    /// We use this so that APIs that have become
    /// non-nullable can still be used with `!` and `?`
    /// to support older versions of the API as well.
    T? _ambiguate<T>(T? value) => value;

    _ambiguate(WidgetsBinding.instance)?.addPostFrameCallback(
      (_) => slideController.forward(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.dismissable ? Navigator.of(context).pop : null,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: _buildToast()),
      ),
    );
  }

  Widget _buildToast() {
    switch (widget.position) {
      case MotionToastPosition.top:
        return _renderTopMotionToast();
      case MotionToastPosition.center:
        return _renderCenterMotionToast();
      case MotionToastPosition.bottom:
        return _renderBottomMotionToast();
    }
  }

  /// Create a bottom motion toast with all the given attributes
  Widget _renderBottomMotionToast() {
    return Center(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: widget.height,
          width: widget.width,
          constraints: widget.height == null && widget.width == null
              ? widget.constraints ??
                  BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.75,
                    minWidth: 200,
                    maxHeight: 100,
                  )
              : null,
          child: SlideTransition(
            position: offsetAnimation,
            child: _buildMotionToast(),
          ),
        ),
      ),
    );
  }

  /// render center displayed motion toast with all the given attributes
  Widget _renderCenterMotionToast() {
    return Center(
      child: Container(
        height: widget.height,
        width: widget.width,
        constraints: widget.height == null && widget.width == null
            ? widget.constraints ??
                BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.75,
                  minWidth: 200,
                  maxHeight: 100,
                )
            : null,
        child: _buildMotionToast(),
      ),
    );
  }

  /// render a top positionned motion toast with all the given attributes
  Widget _renderTopMotionToast() {
    return Center(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: widget.height,
          width: widget.width,
          constraints: widget.height == null && widget.width == null
              ? widget.constraints ??
                  BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.75,
                    minWidth: 200,
                    maxHeight: 100,
                  )
              : null,
          child: SlideTransition(
            position: offsetAnimation,
            child: _buildMotionToast(),
          ),
        ),
      ),
    );
  }

  Widget _buildMotionToast() {
    return MotionToastBackground(
      backgroundColor: widget.primaryColor,
      borderRadius: widget.borderRadius,
      backgroundType: widget.backgroundType,
      child: MotionToastContent(
        color: widget.secondaryColor ?? widget.primaryColor,
        description: widget.description,
        icon: widget.icon,
        iconSize: widget.iconSize,
        radius: widget.borderRadius,
        title: widget.title,
        withAnimation: widget.enableAnimation,
        isReversed: widget.layoutOrientation == ToastOrientation.rtl,
      ),
    );
  }

  @override
  void dispose() {
    if (toastTimer.isActive) {
      slideController.dispose();
      toastTimer.cancel();
    }
    super.dispose();
  }
}
