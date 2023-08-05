import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lshape extends StatefulWidget {
  const Lshape({super.key});

  @override
  State<Lshape> createState() => _LshapeState();
}

class _LshapeState extends State<Lshape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("L shape"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 80,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 80,
            color: Colors.yellow,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 80,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 80,
                color: Colors.green,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    height: 100,
                    width: 80,
                    color: Colors.black,
                  ),

                  Container(
                    height: 100,
                    width: 80,
                    color: Colors.red,
                  ),

                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 80,
                        color: Colors.green,
                      ),

                      Container(
                        height: 100,
                        width: 80,
                        color: Colors.blue,
                      ),
                    ],
                  ),


                ],
              ),
            ],
          ),


        ],
      ),
    );
  }
}
