import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridviewExample extends StatefulWidget {
  const GridviewExample({super.key});

  @override
  State<GridviewExample> createState() => _GridviewExampleState();
}

class _GridviewExampleState extends State<GridviewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Gridview"),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
