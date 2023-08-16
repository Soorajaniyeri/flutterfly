import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedBoxexample extends StatefulWidget {
  const SizedBoxexample({super.key});

  @override
  State<SizedBoxexample> createState() => _SizedBoxexampleState();
}

class _SizedBoxexampleState extends State<SizedBoxexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Sizedbox"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text("hello"),
            SizedBox(
              height: 20,
            ),
            Text("Sooraj")
          ],
        ));
  }
}
