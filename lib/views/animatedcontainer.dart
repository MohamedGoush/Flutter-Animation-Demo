import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
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
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.blueGrey : Colors.amber,
            duration: Duration(seconds: 2),
            alignment: selected ? Alignment.center : Alignment.topCenter,
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(
              size: 75,
            ),
          ),
        ),
      ),
    );
  }
}
