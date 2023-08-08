import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flutterbuttons extends StatefulWidget {
  const Flutterbuttons({super.key});

  @override
  State<Flutterbuttons> createState() => _FlutterbuttonsState();
}

class _FlutterbuttonsState extends State<Flutterbuttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Flutter Buttons"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            FloatingActionButton(
              onPressed: () {
                print("This is from Floating action Button");
              },
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.add_box,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print("This is from Elevated Button");
                },
                child: Text("Iam a Elevated Button")),
            MaterialButton(
              onPressed: () {
                print("This is from Material Button");
              },
              color: Colors.red,
              child: Text(
                "Iam a MaterialButton",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
