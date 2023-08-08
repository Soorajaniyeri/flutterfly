import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Containerdecoration extends StatefulWidget {
  const Containerdecoration({super.key});

  @override
  State<Containerdecoration> createState() => _ContainerdecorationState();
}

class _ContainerdecorationState extends State<Containerdecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Container Decoration"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello Flutter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                Text("Container Decoration",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),)
              ],
            )),
            height: 100,
            width: 200,
           // color: Colors.green,

            decoration:   BoxDecoration(
             // border: Border.all(color: Colors.yellow,width: 5),
              color: Colors.red,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(30)),
           
           //borderRadius: BorderRadius.all(Radius.circular(30)),

              boxShadow: [

                BoxShadow(

                  color: Colors.grey.shade400,
                  blurRadius: 5,
                  spreadRadius: 5,
                  offset: Offset(-5,-5 )


                )

              ]


            ) ,
          ),
        ));
  }
}
