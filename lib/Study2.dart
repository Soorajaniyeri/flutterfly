import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Study2 extends StatefulWidget {
  const Study2({super.key});

  @override
  State<Study2> createState() => _Study2State();
}

class _Study2State extends State<Study2> {
  List<String> myItems = [];

  loadImage() async {
    SharedPreferences load = await SharedPreferences.getInstance();
    List<String>? store = load.getStringList("images");

    if (store != null) {
      setState(() {
        myItems = store;
      });
    }
  }

  @override
  void initState() {
    loadImage();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //print(myItems);
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
          padding: EdgeInsets.all(20),
          itemCount: myItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: FileImage(File(myItems[index])))),
            );
          }),
    );
  }
}
