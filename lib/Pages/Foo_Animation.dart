import 'package:flutter/material.dart';

class Foo_Animation extends StatefulWidget {
  const Foo_Animation({super.key});

  @override
  State<Foo_Animation> createState() => _Foo_AnimationState();
}

class _Foo_AnimationState extends State<Foo_Animation> {
  var _width = 200.0;
  var _height = 100.0;

  Color _color = Colors.blueGrey;

  Decoration _boxDecoration = BoxDecoration(
    color: Colors.blueGrey,
    borderRadius: BorderRadius.circular(2),
  );

  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // for animation we have Animated form of every Widget like container, builder, column,  etc..
            AnimatedContainer(
              duration: const Duration(seconds: 2),

              // to change the animation speed at diffrent stages
              curve: Curves.bounceOut,

              width: _width,
              height: _height,
              decoration: _boxDecoration,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    // toggle the state of the animation
                    if (flag) {
                      // starting state
                      _width = 200.0;
                      _height = 100.0;

                      _boxDecoration = BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(2),
                      );

                      flag = !flag;
                    } else {
                      // starting state
                      _width = 100.0;
                      _height = 200.0;
                      _boxDecoration = BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(30),
                      );

                      flag = !flag;
                    }
                  });
                },
                child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
