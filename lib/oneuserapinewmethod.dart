import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfly/oneusernewthodmodel.dart';
import 'package:http/http.dart';

class SingleUserProfile extends StatefulWidget {
  const SingleUserProfile({super.key});

  @override
  State<SingleUserProfile> createState() => _SingleUserProfileState();
}

class _SingleUserProfileState extends State<SingleUserProfile> {
  Future<OneuserExample> loadData() async {
    Response response = await get(Uri.parse("https://dummyjson.com/users/5"));
    if (response.statusCode == 200) {
      var body = OneuserExample.fromJson(jsonDecode(response.body));

      return body;
    } else {
      throw "error";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Single user"),
      ),
      body: FutureBuilder(
          future: loadData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              return Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(snapshot.data.image),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            snapshot.data.firstName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            snapshot.data.lastName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age : "),
                          Text(snapshot.data.age.toString()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Gender : "),
                          Text(snapshot.data.gender),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("phone : "),
                          Text(snapshot.data.birthDate),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("B.group : "),
                          Text(snapshot.data.bloodGroup),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Height : "),
                          Text(snapshot.data.height.toString()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("weight : "),
                          Text(snapshot.data.weight.toString()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Eye clr : "),
                          Text(snapshot.data.eyeColor.toString()),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("hair : "),
                          Text(snapshot.data.hair.color),
                          Text(" ,"),
                          Text(snapshot.data.hair.type),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("address : "),
                          Text(snapshot.data.address.address),
                          Text(","),
                          Text(snapshot.data.address.city),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Email : "),
                          Text(snapshot.data.email),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("phone : "),
                          Text(snapshot.data.phone),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Text(snapshot.error.toString());
            }
          }),
    );
  }
}
