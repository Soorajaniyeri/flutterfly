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
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}
