import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewExample extends StatefulWidget {
  const ListviewExample({super.key});

  @override
  State<ListviewExample> createState() => _ListviewExampleState();
}

class _ListviewExampleState extends State<ListviewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Listview Example"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),

          Container(
            height: 200,
            width: 200,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
