import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stackexample extends StatefulWidget {
  const Stackexample({super.key});

  @override
  State<Stackexample> createState() => _StackexampleState();
}

class _StackexampleState extends State<Stackexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.red),
                height: 200,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Red",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 80,
              top: 80,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.purple),
                height: 200,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5),
                  child: Text(
                    "  purple",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 150,
              top: 150,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.yellow),
                height: 200,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5),
                  child: Text(
                    "  Yellow",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),

            // Container(
            //   height: 100,
            //   width: 80,
            //   color: Colors.pink,
            // ),
            //
            // Container(
            //   height: 100,
            //   width: 80,
            //   color: Colors.pink,
            // ),
          ],
        ));
  }
}
