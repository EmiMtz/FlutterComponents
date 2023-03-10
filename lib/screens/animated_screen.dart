import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.red;
  double _borderRadius = 10;

  void changeShape() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70; 
    _height = random.nextInt(300).toDouble() + 70;
    // _color = Colors.primaries[random.nextInt(Colors.primaries.length)];
    _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = random.nextInt(100).toDouble() + 10;

    // if (_width > 150) {
    //   _width = 50;
    //   _height = 50;
    //   _color = Colors.red;
    //   _borderRadius = 10;
    // }
    
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_borderRadius)
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline, size: 35),
        onPressed: () => changeShape(),
      ),
    );
  }
}