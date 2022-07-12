import 'package:flutter/material.dart';

/// Render a heartbeat animated icon
class HeartBeatIcon extends StatefulWidget {
  /// The icon that will be animated
  final IconData icon;

  /// The icon color
  final Color color;

  /// The default icon size
  final double size;

  /// Creates a stateful widget that renders a heartbeat animated icon
  const HeartBeatIcon({
    Key? key,
    required this.icon,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  State<HeartBeatIcon> createState() => _HeartBeatIconState();
}

class _HeartBeatIconState extends State<HeartBeatIcon>
    with TickerProviderStateMixin {
  late Animation _heartAnimation;
  late AnimationController _heartAnimationController;

  @override
  void initState() {
    super.initState();
    _heartAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _heartAnimation = Tween(
      begin: widget.size * 0.7,
      end: widget.size * 0.85,
    ).animate(
      CurvedAnimation(
        curve: Curves.bounceOut,
        parent: _heartAnimationController,
      ),
    );

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
          widget.icon,
          color: widget.color,
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
