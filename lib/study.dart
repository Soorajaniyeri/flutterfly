import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Study extends StatefulWidget {
  const Study({super.key});

  @override
  State<Study> createState() => _StudyState();
}

class _StudyState extends State<Study> {
  dynamic value;

  getData() async {
    Response store = await get(Uri.parse("https://reqres.in/api/users/2"));
    if (store.statusCode == 200) {
      var myData = jsonDecode(store.body);

      setState(() {
        setState(() {
          value = myData;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Study"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                getData();
              },
              child: Text("click")),
          value == null ? SizedBox() : Text(value['data']["first_name"])
        ],
      ),
    );
  }
}
