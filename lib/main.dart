import 'package:flutter/material.dart';
import 'package:flutter_animation_demo/views/animatealign.dart';
import 'package:flutter_animation_demo/views/animatedbuilder.dart';
import 'package:flutter_animation_demo/views/animatedcontainer.dart';
import 'package:flutter_animation_demo/views/animatedcrossfade.dart';
import 'package:flutter_animation_demo/views/animateddefaulttextstyle.dart';
import 'package:flutter_animation_demo/views/animatedsize.dart';
import 'dart:math' as math;

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: AnimatedCrossFadeDemo(),
      // home: AnimatedContainerDemo(),
      // home: AnimatedBuilderDemo(),
      // home: AnimtedSizeDemo(),
      // home: AnimatedAlignDemo(),
      // home: AnimatedDefaultTextstyleDemo(),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool first = true;
  double _fonSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mohamed Animation"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AnimatedAlignDemo();
                    },
                  ),
                );
              },
              child: Text("Animated Align"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AnimatedCrossFadeDemo();
                    },
                  ),
                );
              },
              child: Text("Animated CrossFade"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AnimatedDefaultTextstyleDemo();
                    },
                  ),
                );
              },
              child: Text("Animated Text Style"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AnimtedSizeDemo();
                    },
                  ),
                );
              },
              child: Text("Animated Size"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AnimatedContainerDemo();
                    },
                  ),
                );
              },
              child: Text("Animated Container"),
            ),
          ],
        ),
      ),
    );
  }
}
