import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiTask5 extends StatefulWidget {
  const ApiTask5({super.key});

  @override
  State<ApiTask5> createState() => _ApiTask5State();
}

class _ApiTask5State extends State<ApiTask5> {
  dynamic bodyData;

  getDataFromApi() async {
    Response responce = await get(Uri.parse(
        "https://microsoftedge.github.io/Demos/json-dummy-data/64KB.json"));
    if (responce.statusCode == 200) {
      var body = jsonDecode(responce.body);

      setState(() {
        bodyData = body;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          onPressed: () {
            getDataFromApi();
          }),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Api Task"),
        centerTitle: true,
      ),
      body: bodyData == null
          ? SizedBox()
          : ListView.builder(
              itemCount: bodyData.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      Text(
                        bodyData[index]["name"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        bodyData[index]["language"],
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        bodyData[index]["bio"],
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                );
              }),
    );
  }
}
