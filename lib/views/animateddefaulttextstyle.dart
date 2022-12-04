import 'package:flutter/material.dart';

class AnimatedDefaultTextstyleDemo extends StatefulWidget {
  const AnimatedDefaultTextstyleDemo({super.key});

  @override
  State<AnimatedDefaultTextstyleDemo> createState() =>
      _AnimatedDefaultTextstyleDemoState();
}

class _AnimatedDefaultTextstyleDemoState
    extends State<AnimatedDefaultTextstyleDemo> {
  bool first = true;
  double _fonSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohamed Animation"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              child: Text("Mohamed"),
              style: TextStyle(
                fontSize: _fonSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              duration: Duration(seconds: 2),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  _fonSize = first ? 50 : 70;
                  _color = first ? Colors.blue : Colors.red;
                  first = !first;
                },
              );
            },
            child: Text("Switch"),
          )
        ],
      ),
    );
  }
}
