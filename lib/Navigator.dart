import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagepickertask.dart';

class NavigatorExample extends StatefulWidget {
  const NavigatorExample({super.key});

  @override
  State<NavigatorExample> createState() => _NavigatorExampleState();
}

class _NavigatorExampleState extends State<NavigatorExample> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Navigator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ImagePickerBoth();
                }));
              },
              child: Text(
                "Go to home page",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
