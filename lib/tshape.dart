import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tshape extends StatefulWidget {
  const Tshape({super.key});

  @override
  State<Tshape> createState() => _TshapeState();
}

class _TshapeState extends State<Tshape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Tshape"),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Icon(
            Icons.info,
            color: Colors.white,
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            color: Colors.blue,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.blue,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.green,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.green,
              ),
            ],
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
