import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostDataApiExample extends StatefulWidget {
  const PostDataApiExample({super.key});

  @override
  State<PostDataApiExample> createState() => _PostDataApiExampleState();
}

class _PostDataApiExampleState extends State<PostDataApiExample> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  String responceText = '';

  postData() async {
    Map<String, dynamic> postMap = {
      "name": nameController.text.trim(),
      "age": ageController.text.trim(),
      "salary": salaryController.text.trim()
    };

    const baseUrl = "https://dummy.restapiexample.com/api/v1/create";

    // final res = await http.get(Uri.parse(baseUrl));

    var body = jsonEncode(postMap);

    try {
      final responce = await http.post(Uri.parse(baseUrl), body: body);

      if (responce.statusCode == 200) {
        log("sucess");

        setState(() {
          responceText = "Success";
        });
      } else {
        setState(() {
          responceText = "error";
        });
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Post Data Api'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: ageController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: salaryController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                postData();
              },
              child: Text("Submit")),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Text(responceText),
            ),
          )
        ],
      ),
    );
  }
}
