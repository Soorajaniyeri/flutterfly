import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiTask extends StatefulWidget {
  const ApiTask({super.key});

  @override
  State<ApiTask> createState() => _ApiTaskState();
}

class _ApiTaskState extends State<ApiTask> {
  dynamic myData;

  loadDataApi() async {
    Response store = await get(Uri.parse("https://reqres.in/api/unknown/2"));

    if (store.statusCode == 200) {
      var data = jsonDecode(store.body);

      setState(() {
        myData = data;

        print(myData);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Api integration"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                loadDataApi();
              },
              child: Text("Load Data From Api")),
          Center(
            child: Stack(children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.grey)),
                child: myData == null
                    ? Center(child: Text("click button to show data"))
                    : Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 13,
                              ),
                              Text(
                                myData["data"]["name"],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.green,
                              )
                            ],
                          ),
                          Text(myData["data"]["year"].toString()),
                          Text(myData["data"]["pantone_value"].toString()),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              myData["support"]["text"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(myData["support"]["url"]),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
              ),
              Positioned(
                top: 10,
                left: 9,
                child: Container(
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle),
                  height: 50,
                  width: 50,
                  child: Center(
                    child: myData == null
                        ? Text("id")
                        : Text(
                            myData["data"]["id"].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
