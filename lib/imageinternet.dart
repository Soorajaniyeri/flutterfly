import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Imagedisplay extends StatefulWidget {
  const Imagedisplay({super.key});

  @override
  State<Imagedisplay> createState() => _ImagedisplayState();
}

class _ImagedisplayState extends State<Imagedisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Image From Internet"),
        centerTitle: true,

      ),

      body:Center(
        child: Image(

          height: 150,
            width: 150,
            image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png")),
      )
    );
  }
}


