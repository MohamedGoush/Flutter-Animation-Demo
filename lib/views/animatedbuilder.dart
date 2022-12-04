import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderDemo extends StatefulWidget {
  const AnimatedBuilderDemo({super.key});

  @override
  State<AnimatedBuilderDemo> createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with TickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(
      seconds: 2,
    ),
  )..repeat();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohamed Animation"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}
