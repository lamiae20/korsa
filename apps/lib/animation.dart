import 'package:flutter/material.dart';
import 'dart:async';

class DalayedAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  // ignore: use_key_in_widget_constructors
  const DalayedAnimation({required this.delay, required this.child});

  @override
  State<DalayedAnimation> createState() => _DalayedAnimationState();
}

class _DalayedAnimationState extends State<DalayedAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animOffset;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    final Curve =
        CurvedAnimation(parent: _controller, curve: Curves.decelerate);
    _animOffset = Tween<Offset>(
      begin: Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(Curve);

    Timer(Duration(milliseconds: widget.delay), () {
      _controller.forward();
    });
  }

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
    );
  }
}
