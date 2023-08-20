import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [


          Align(
            alignment: Alignment.topLeft,
            child: Container(

              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Container(

              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),


          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),
          ),



          Align(
            alignment: Alignment.bottomRight,

            child: Container(

              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),



          Align(
            alignment: Alignment.center,

            child: Container(

              height: 100,
              width: 100,
              color: Colors.black,
            ),
          ),

          Positioned(
            left: 50,
            bottom: 50,




            child: Container(

              height: 100,
              width: 80,
              color: Colors.pink,
            ),
          ),

        ],
      ),
    );
  }
}
