import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textdecoration extends StatefulWidget {
  const Textdecoration({super.key});

  @override
  State<Textdecoration> createState() => _TextdecorationState();
}

class _TextdecorationState extends State<Textdecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Text Decoration"),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        "Hello Flutter",
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            backgroundColor: Colors.red),
      )),
    );
  }
}
