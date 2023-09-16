import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  TextEditingController myctrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Text("Controller TextField"),
      // ),
      body: Column(
        children: [
          TextField(
            controller: myctrlr,
          ),
          FloatingActionButton(onPressed: () {
            print(myctrlr.text);
          })
        ],
      ),
    );
  }
}
