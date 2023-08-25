import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedTextScreen(),
    );
  }
}

class AnimatedTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Text Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250,
              child: DefaultTextStyle(
                style: const TextStyle(fontSize: 24, color: Colors.black),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Welcome to Flutter',
                        speed: Duration(milliseconds: 100)),
                    TyperAnimatedText('Explore the possibilities',
                        speed: Duration(milliseconds: 100)),
                    TyperAnimatedText('Create amazing apps',
                        speed: Duration(milliseconds: 100)),
                  ],
                  totalRepeatCount: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
