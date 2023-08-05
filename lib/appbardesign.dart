import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbardesign extends StatefulWidget {
  const Appbardesign({super.key});

  @override
  State<Appbardesign> createState() => _AppbardesignState();
}

class _AppbardesignState extends State<Appbardesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar Design"),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.info,
            color: Colors.white,
            size: 30,
          ),
          // Icon(Icons.more)
        ],
        elevation: 90,
      ),
    );
  }
}
