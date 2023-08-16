import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkwellExample extends StatefulWidget {
  const InkwellExample({super.key});

  @override
  State<InkwellExample> createState() => _InkwellExampleState();
}

class _InkwellExampleState extends State<InkwellExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Inkwell Widget"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("Continer Button Clicked");
          },
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
                child: Text(
              "Clik Here",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
