import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Columnalinment extends StatefulWidget {
  const Columnalinment({super.key});

  @override
  State<Columnalinment> createState() => _ColumnalinmentState();
}

class _ColumnalinmentState extends State<Columnalinment> {
  TextEditingController cntrl1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Column Task"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: cntrl1,
            ),

            FloatingActionButton(onPressed:(){

              setState(() {
                cntrl1.text;
              });

            } ),

            Container(
              height: 100,
              width: 150,
              color: Colors.green,
              child: Center(child: Text("")),
            ),

            // TextField(
            //   controller: cntrl1,
            // ),

            cntrl1.text==null ? Text("value will be shows here"): Text(cntrl1.text)

          ],
        ),
      ),
    );
  }
}
