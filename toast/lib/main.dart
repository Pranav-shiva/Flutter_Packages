import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the
// root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toast"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: 'Hello! i am Pranav Shiva',
              backgroundColor: Colors.grey,
            );
          },
          child: Container(
            padding: const EdgeInsets.all(14),
            color: Colors.blue,
            child: const Text(
              'Show Toast',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
