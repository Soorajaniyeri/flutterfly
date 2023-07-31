import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Flutter"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 250,
            color: Colors.orange,
          ),
          Text("Welcome"),
          Container(
            height: 150,
            width: 250,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
