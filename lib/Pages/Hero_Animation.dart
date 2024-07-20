import 'package:flutter/material.dart';
import 'package:learning_project2/Pages/hero_second.dart';

class Hero_Animation extends StatefulWidget {
  const Hero_Animation({super.key});

  @override
  State<Hero_Animation> createState() => _Hero_AnimationState();
}

class _Hero_AnimationState extends State<Hero_Animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
            child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Hero_second()));
          },
          child: Hero(
                //* this tag name should be same in the both hero Widgets to make them work together
              tag: 'anime',
              child: Image.asset(
                "assests/images/img3.jpg",
                height: 150,
                width: 200,
              )),
        )),
      ),
    );
  }
}
