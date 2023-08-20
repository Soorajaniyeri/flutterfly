import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridviewbuilderexample extends StatefulWidget {
  const Gridviewbuilderexample({super.key});

  @override
  State<Gridviewbuilderexample> createState() => _GridviewbuilderexampleState();
}

class _GridviewbuilderexampleState extends State<Gridviewbuilderexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Gridview builder"),
        ),
        body: GridView.builder(
            //padding: EdgeInsets.all(10),
            itemCount: 63,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 9, mainAxisSpacing: 0, crossAxisSpacing: 0),
            itemBuilder: (context, index) {
              if (index.isEven) {
                return Container(
                  child: Center(
                      child: Text(
                    index.toString(),
                    style: TextStyle(color: Colors.red),
                  )),
                  color: Colors.white,
                );
              } else {
                return Container(
                  child: Center(
                      child: Text(index.toString(),
                          style: TextStyle(color: Colors.red))),
                  color: Colors.black,
                );
              }
            }));
  }
}
