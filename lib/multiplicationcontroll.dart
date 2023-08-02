import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Multiplication extends StatefulWidget {
  const Multiplication({super.key});

  @override
  State<Multiplication> createState() => _MultiplicationState();
}

class _MultiplicationState extends State<Multiplication> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Multiplication Controller"),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller1,
          ),
          TextField(
            controller: controller2,
          ),
          FloatingActionButton(onPressed: () {
            int myvalue =
                int.parse(controller1.text) * int.parse(controller2.text);
            print(myvalue);
          })
        ],
      ),
    );
  }
}
