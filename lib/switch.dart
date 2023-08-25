import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Switchexample extends StatefulWidget {
  const Switchexample({super.key});

  @override
  State<Switchexample> createState() => _SwitchexampleState();
}

class _SwitchexampleState extends State<Switchexample> {
  bool myValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Switch Example"),
      ),
      body: Column(
        children: [
          Checkbox(
              value: myValue,
              onChanged: (gettingvalue) {
                setState(() {
                  myValue = gettingvalue!;
                  print(myValue);
                });
              })
        ],
      ),
    );
  }
}
