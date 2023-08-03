import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sumtextfield extends StatefulWidget {
  const Sumtextfield({super.key});

  @override
  State<Sumtextfield> createState() => _SumtextfieldState();
}

class _SumtextfieldState extends State<Sumtextfield> {
  int? myvalue;

  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Sum"),
      ),
      body: Column(
        children: [
          TextField(
            controller: ctrl1,
          ),
          TextField(
            controller: ctrl2,
          ),
          FloatingActionButton(onPressed: () {
            setState(() {
              myvalue = int.parse(ctrl1.text) + int.parse(ctrl2.text);
            });
          }),
          myvalue == null ? Text("") : Text(myvalue.toString())
        ],
      ),
    );
  }
}
