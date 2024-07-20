import 'package:flutter/material.dart';

class CrossFade_animation extends StatefulWidget {
  const CrossFade_animation({super.key});

  @override
  State<CrossFade_animation> createState() => _CrossFade_animationState();
}

class _CrossFade_animationState extends State<CrossFade_animation> {
  var isShow = true;

  void onLoad() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cross fade animation")),
      body: Container(
        child: Center(
            child: Column(
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  height: 150,
                  width: 150,
                  color: Colors.grey.shade400,
                ),
                secondChild: Image.asset(
                  "assests/images/bg27.jpg",
                  height: 200,
                  width: 200,
                ),

                // change the animations
                // sizeCurve: Curves.bounceOut,
                firstCurve: Curves.bounceOut,
                secondCurve: Curves.easeInCirc,
                reverseDuration: Duration(seconds: 4),
                crossFadeState: isShow
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 3)),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  onLoad();
                },
                child: const Text("Show animation"))
          ],
        )),
      ),
    );
  }
}
