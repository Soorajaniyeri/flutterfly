import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({super.key});

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  String? myvalue;
  // String? myvalue2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("TextField"),
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (value) {
                myvalue = value;
              },
            ),
            FloatingActionButton(onPressed: () {
              if (int.parse(myvalue!) % 2 == 0) {
                print(" The number you Entered is Even number");
              } else {
                print("The number you Entered is Odd number");
              }
            })
          ],
        ));
  }
}
