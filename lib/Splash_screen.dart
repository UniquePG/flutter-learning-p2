import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning_project2/Pages/HomePage.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    super.initState();

    // use timer class to make splash screen appear for some time and then navigate to the desired page
    Timer(const Duration(seconds: 5), () {
      // use Navigator.removepush replacement to remove the current route from navigation stack, so that it is not present in back button
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            "My App",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
