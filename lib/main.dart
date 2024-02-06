import 'package:flutter/material.dart';
import 'package:couch_surfing_project/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Couch Surfing Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Profile'),),
        body: MyHomePage(),
      ),
    );
  }
}