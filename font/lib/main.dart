import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Awesome Icons'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.camera, // Use the desired icon
              size: 48, // Adjust the size as needed
              color: Colors.blue, // Customize the color
            ),
            SizedBox(height: 16),
            Text('Camera Icon'),
          ],
        ),
      ),
    );
  }
}
