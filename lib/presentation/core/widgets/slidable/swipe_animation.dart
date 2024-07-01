import 'package:flutter/material.dart';

class SwipeAnimation extends StatefulWidget {
  final Widget child;

  const SwipeAnimation({super.key, required this.child});

  @override
  State<SwipeAnimation> createState() => _SwipeAnimationState();
}

class _SwipeAnimationState extends State<SwipeAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<Offset>? _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(-0.2, 0.0),
    ).animate(_controller!);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation!,
      child: widget.child,
    );
  }
}
