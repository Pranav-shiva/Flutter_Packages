import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LiquidSwipeDemo(),
    );
  }
}

class LiquidSwipeDemo extends StatelessWidget {
  final pages = [
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        fullTransitionValue: 300,
        enableLoop: true,
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.8,
      ),
    );
  }
}
