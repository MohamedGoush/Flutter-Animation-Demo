import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  const AnimatedCrossFadeDemo({super.key});

  @override
  State<AnimatedCrossFadeDemo> createState() => _AnimatedCrossFadeDemoState();
}

class _AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool _selected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohamed Animation"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  _selected = !_selected;
                },
              );
            },
            child: Text("Switch"),
          ),
          Container(
            height: 500,
            child: AnimatedCrossFade(
              firstChild: Image.asset("assets/images/tajmahal.jpg"),
              secondChild: Image.asset("assets/images/ocean.jpg"),
              crossFadeState: _selected
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(
                seconds: 2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
