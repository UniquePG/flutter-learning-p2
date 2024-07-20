import 'package:flutter/material.dart';

class Stack_widget extends StatelessWidget {
  const Stack_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack view"),
      ),
      body: Container(
        height: 500,
        width: 500,

        // Stack widget
        child: Stack(
          children: [
            // first child will always in the bottom
            Container(
              height: 300,
              width: 300,
              color: Colors.green,
            ),

            Container(
              height: 250,
              width: 250,
              color: Colors.redAccent,
            ),

            // last child wiil be at the top level
            Positioned(
              // positioned widget is used to postion our widget
              top: 30,
              left: 20,
              child: Container(
                height: 180,
                width: 180,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
