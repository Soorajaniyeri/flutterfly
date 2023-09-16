import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Api3 extends StatefulWidget {
  const Api3({super.key});

  @override
  State<Api3> createState() => _Api3State();
}

class _Api3State extends State<Api3> {
  dynamic data;

  getData() async {
    Response responce =
        await get(Uri.parse("https://reqres.in/api/users?page=2"));
    if (responce.statusCode == 200) {
      var body = jsonDecode(responce.body);

      setState(() {
        data = body;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: () {
            getData();
          }),
      appBar: AppBar(
        title: Text("Api with builder"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: data == null
          ? SizedBox()
          : ListView.builder(
              itemCount: data["data"].length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(data['data'][index]['avatar'])),
                        shape: BoxShape.circle),
                    height: 50,
                    width: 50,
                  ),
                  title: Text(data["data"][index]["first_name"]),
                  subtitle: Text(data["data"][index]["email"]),
                );
              }),
    );
  }
}
