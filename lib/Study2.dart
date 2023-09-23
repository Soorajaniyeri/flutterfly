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

  String? showName;

  getData() async {
    SharedPreferences mydata = await SharedPreferences.getInstance();
    String? store = mydata.getString("dp");
    if (store != null) {
      print(store);

      setState(() {
        showName = store;
      });
    }
  }

  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:showName == null? SizedBox():Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: FileImage(File(showName!))),
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }
}
