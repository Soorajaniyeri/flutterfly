import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Screen 2'),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: ElevatedButton(onPressed: (){

            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){

              return Page3();
            }));


          }, child: Text("Go to Screeen 3"))),



        ],
      ),
    );
  }
}
