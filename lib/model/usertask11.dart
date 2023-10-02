import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfly/getdatataskmodel10.dart';
import 'package:http/http.dart';

class UserTask10 extends StatefulWidget {
  const UserTask10({super.key});

  @override
  State<UserTask10> createState() => _UserTask10State();
}

class _UserTask10State extends State<UserTask10> {
  Future<GetNewTask> loadData() async {
    const url = "https://randomuser.me/api/?results=1";

    Response res = await get(Uri.parse(url));
    if (res.statusCode == 200) {
      var body = GetNewTask.fromJson(jsonDecode(res.body));
      return body;
    } else {
      throw "error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,),
        body: FutureBuilder(
            future: loadData(),
            builder: (context,AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.hasData) {

                List<Results>? list = snapshot.data!.results;
                return ListView.builder(
                  itemCount: list!.length,
                    itemBuilder: (context, index) {
                  return Text(list![index].name!.first.toString());
                });
              } else {
                
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
            }),
      );
  }
}
