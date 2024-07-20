import 'package:flutter/material.dart';
import 'package:learning_project2/Splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter project 2",
      home: Splash_screen(),
    );
  }
}
