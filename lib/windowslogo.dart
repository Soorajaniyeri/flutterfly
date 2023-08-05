import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Windowslogo extends StatefulWidget {
  const Windowslogo({super.key});

  @override
  State<Windowslogo> createState() => _WindowslogoState();
}

class _WindowslogoState extends State<Windowslogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Windows Logo"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                width: 10,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              )
            ],
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                width: 10,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              )
            ],
          ),
        ],
      ),
    );
  }
}
