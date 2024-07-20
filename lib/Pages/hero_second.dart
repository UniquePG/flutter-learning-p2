import 'package:flutter/material.dart';

class Hero_second extends StatelessWidget {
  const Hero_second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Detail')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
        child: Container(
          alignment: Alignment.topCenter,
          child: Hero(
                // tag name should be same as previous widget
              tag: "anime",
              child: Image.asset(
                "assests/images/img3.jpg",
                width: double.infinity,
              )),
        ),
      ),
    );
  }
}
