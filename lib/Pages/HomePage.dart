import 'package:flutter/material.dart';
import 'package:learning_project2/Pages/Animated_opacity.dart';
import 'package:learning_project2/Pages/CrossFade_annimation.dart';
import 'package:learning_project2/Pages/Foo_Animation.dart';
import 'package:learning_project2/Pages/GetApiCalling.dart';
import 'package:learning_project2/Pages/Grid_View.dart';
import 'package:learning_project2/Pages/Hero_Animation.dart';
import 'package:learning_project2/Pages/Stack_Widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Scaffold(
              appBar: AppBar(
                title: const Text("Home page"),
              ),
              body: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Grid_View()));
                        },
                        child: const Text("Grid view")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Stack_widget()));
                        },
                        child: const Text("Stack view")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => GetApiCalling()));
                        },
                        child: Text("GetApi Calling")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Hero_Animation()));
                        },
                        child: Text("Hero Animation")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CrossFade_animation()));
                        },
                        child: Text("Crossfade Animation")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Foo_Animation()));
                        },
                        child: const Text("Foo animation")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Animated_opacity()));
                        },
                        child: Text("Animated opacity"))
                  ],
                ),
              ),
            ));
  }
}
