import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  const AnimatedAlignDemo({super.key});

  @override
  State<AnimatedAlignDemo> createState() => _AnimatedAlignDemoState();
}

class _AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohamed Animation"),
      ),
      body: GestureDetector(
        onTap: () {
          setState(
            () {
              selected = !selected;
            },
          );
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.red,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
