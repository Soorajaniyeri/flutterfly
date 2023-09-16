import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfly/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Screen 1"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [



                ElevatedButton(onPressed: (){


                  Navigator.push(context, MaterialPageRoute(builder: (context){

                    return Page2();

                  }));

                }, child: Text("Go to Screen 2")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
