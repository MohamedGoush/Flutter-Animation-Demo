import 'package:flutter/material.dart';

class AnimtedSizeDemo extends StatefulWidget {
  const AnimtedSizeDemo({super.key});

  @override
  State<AnimtedSizeDemo> createState() => _AnimtedSizeDemoState();
}

class _AnimtedSizeDemoState extends State<AnimtedSizeDemo>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohamed Animation"),
      ),
      body: Center(
        child: AnimatedSize(
          vsync: this,
          duration: Duration(
            seconds: 1,
          ),
          child: Container(
            height: double.infinity,
            child: Image.asset(
              "assets/images/tajmahal.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
