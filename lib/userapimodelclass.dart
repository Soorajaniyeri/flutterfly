import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'Usersapi.dart';

class UsersApiModel extends StatefulWidget {
  const UsersApiModel({super.key});

  @override
  State<UsersApiModel> createState() => _UsersApiModelState();
}

class _UsersApiModelState extends State<UsersApiModel> {
  Future<MyUsers> getData() async {
    Response response = await get(Uri.parse("https://dummyjson.com/users"));
    if (response.statusCode == 200) {
      var body = MyUsers.fromJson(jsonDecode(response.body));
      return body;
    } else {
      throw "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Users Api"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, AsyncSnapshot<MyUsers> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              List<Users>? myList = snapshot.data!.users;
              return ListView.builder(
                  itemCount: myList!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          height: 200,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.black)
                          ),
                          child: Column(
                            children: [
                              
                              
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage(myList[index].image!))
                                ),
                              ),
                              
                              
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(myList[index].firstName!),
                                  Text(myList[index].lastName!),
                                ],
                              ),

                              Text(myList[index].email!),
                            ],
                          )),
                    );
                  });
            } else {
              return Center(
                child: Text("No data Found ${snapshot.error}"),
              );
            }
          }),
    );
  }
}
