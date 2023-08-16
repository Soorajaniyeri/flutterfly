import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testinguu extends StatefulWidget {
  const testinguu({super.key});

  @override
  State<testinguu> createState() => _testinguuState();
}

class _testinguuState extends State<testinguu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("hello"),
      ),

      // body:ListView.builder(
      //   itemBuilder: (context,index) {
      //     return Text('hy');
      //   }
      // )

      body:Container(
        height: 200,
        color: Colors.red,
        child: Center(
          child: ListView.builder(
            //padding: EdgeInsets.all(10),
            itemCount: 5,
              itemBuilder: (context,index){

               return Text((index+1).toString());


              }),
        ),
      ),
    );
  }
}
