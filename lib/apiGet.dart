import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiGet extends StatefulWidget {
  const ApiGet({super.key});

  @override
  State<ApiGet> createState() => _ApiGetState();
}

class _ApiGetState extends State<ApiGet> {
  dynamic getData;

  getApi() async {
    Response store = await get(Uri.parse("https://reqres.in/api/users/2"));

    if (store.statusCode == 200) {
      var body = jsonDecode(store.body);

      setState(() {
        getData = body;
        
      });

    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Api Integration"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  getApi();
                },
                child: Text("click")),
            getData == null ? SizedBox() : Text(getData["data"]["first_name"]),
            getData == null ? SizedBox() : Text(getData["data"]["email"])
          ],
        ),
      ),
    );
  }
}
