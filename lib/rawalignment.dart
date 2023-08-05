import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rowalignment extends StatefulWidget {
  const Rowalignment({super.key});

  @override
  State<Rowalignment> createState() => _RowalignmentState();
}

class _RowalignmentState extends State<Rowalignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Row Alignment"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 150,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
