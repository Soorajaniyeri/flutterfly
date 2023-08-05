import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tshape2 extends StatefulWidget {
  const Tshape2({super.key});

  @override
  State<Tshape2> createState() => _Tshape2State();
}

class _Tshape2State extends State<Tshape2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("T shape 2"),
        centerTitle: true,

        leading: Icon(Icons.menu,color: Colors.white,),
        actions: [

          Icon(Icons.info,color: Colors.white,)
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),


            ],
          ),


          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),


          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          )
        ],

      ),
    );
  }
}
