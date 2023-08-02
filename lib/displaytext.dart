import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Displayvalue extends StatefulWidget {
  const Displayvalue({super.key});

  @override
  State<Displayvalue> createState() => _DisplayvalueState();
}

class _DisplayvalueState extends State<Displayvalue> {
  String? myValue;

  TextEditingController myctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Display vallue"),
      ),
      body: Column(
        children: [
          TextField(
            controller: myctr,
          ),
          FloatingActionButton(onPressed: () {
            setState(() {
              myValue = myctr.text;
            });
          }),
          myValue == null ? Text("getting text") : Text(myValue!),
        ],
      ),
    );
  }
}
