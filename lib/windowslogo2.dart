import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Windowslogo2 extends StatefulWidget {
  const Windowslogo2({super.key});

  @override
  State<Windowslogo2> createState() => _Windowslogo2State();
}

class _Windowslogo2State extends State<Windowslogo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Windows Logo2"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 10,
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
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 10,
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
