import 'package:flutter/material.dart';

class HeartBeatIcon extends StatefulWidget {
  final IconData icon;
  final Color color;

  const HeartBeatIcon({required this.icon, required this.color});

  @override
  _HeartBeatIconState createState() => _HeartBeatIconState();
}

class _HeartBeatIconState extends State<HeartBeatIcon>
    with TickerProviderStateMixin {
  late Animation _heartAnimation;
  late AnimationController _heartAnimationController;

  @override
  void initState() {
    super.initState();
    _heartAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1200));
    _heartAnimation = Tween(begin: 25.0, end: 35.0).animate(CurvedAnimation(
        curve: Curves.bounceOut, parent: _heartAnimationController));

    _heartAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        _heartAnimationController.repeat();
      }
    });
    _heartAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _heartAnimationController,
      builder: (context, child) {
        return Icon(
          this.widget.icon,
          color: this.widget.color,
          size: _heartAnimation.value,
        );
      },
    );
  }

  @override
  void dispose() {
    _heartAnimationController.dispose();
    super.dispose();
  }
}
