import 'package:flutter/material.dart';

class Animated_opacity extends StatefulWidget {
  const Animated_opacity({super.key});

  @override
  State<Animated_opacity> createState() => _Animated_opacityState();
}

class _Animated_opacityState extends State<Animated_opacity> {
  var myOpacity = 1.0;
  var isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Opacity Transition')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // We can wrap our widget with AnimatedOpacity on which we want to exicute opacity with animation
            AnimatedOpacity(
              opacity:
                  myOpacity, // opacity must be between 0(invisible) to 1(visible)
              duration: const Duration(seconds: 2),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Toggling the visibility of the container
                    myOpacity = isVisible ? 1.0 : 0.0;
                    isVisible = !isVisible;
                  });
                },
                child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
