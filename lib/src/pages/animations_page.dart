import 'dart:math';

import 'package:flutter/material.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  _AnimationsPageState createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  double _width = 100.0;
  double _height = 200.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Toca la figura o presiona el botón para animar'),
            const SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () {
                _animar();
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                  color: _color,
                ),
                curve: Curves.bounceOut,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _animar,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  void _animar() {
    final randomNum = Random();

    setState(() {
      _width = randomNum.nextInt(300).toDouble();
      _height = randomNum.nextInt(300).toDouble();
      _color = Color.fromRGBO(randomNum.nextInt(255), randomNum.nextInt(255),
          randomNum.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(randomNum.nextInt(70).toDouble());
    });
  }
}
