import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PostDataApi extends StatefulWidget {
  const PostDataApi({super.key});

  @override
  State<PostDataApi> createState() => _PostDataApiState();
}

class _PostDataApiState extends State<PostDataApi> {
  postDataByApi() async {
    Map postMap = {"name": "Sooraj", "salary": "20000", "age": "25"};
    Response responce = await post(
        Uri.parse("https://dummy.restapiexample.com/api/v1/create"),
        body: jsonEncode(postMap));
    print(responce.statusCode);
    print(responce.body);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Post Api"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        postDataByApi();
      }),
    );
  }
}
