import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flutterbuttons extends StatefulWidget {
  const Flutterbuttons({super.key});

  @override
  State<Flutterbuttons> createState() => _FlutterbuttonsState();
}

class _FlutterbuttonsState extends State<Flutterbuttons> {
  String value = "Please Click on Button";

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

                setState(() {
                  value = "You Clicked Floating Action Button";
                });
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

                  setState(() {
                    value = "You Clicked Elevated Button";
                  });
                },
                child: Text("Iam a Elevated Button")),
            MaterialButton(
              onPressed: () {
                print("This is from Material Button");

                setState(() {
                  value = "You Clicked Material Button";
                });
              },
              color: Colors.green,
              child: Container(
                child: Text(
                  "Iam a MaterialButton",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  value,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )))
          ],
        ),
      ),
    );
  }
}
