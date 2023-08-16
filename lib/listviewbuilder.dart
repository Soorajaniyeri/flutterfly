import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewBuilderexample extends StatefulWidget {
  const ListviewBuilderexample({super.key});

  @override
  State<ListviewBuilderexample> createState() => _ListviewBuilderexampleState();
}

class _ListviewBuilderexampleState extends State<ListviewBuilderexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Listview Builder"),
        centerTitle: true,
      ),
      
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index) {
          return Text("hello ${index-1} "
          );
        }
      ),
    );
  }
}
