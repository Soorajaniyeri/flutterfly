import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class TodoApi extends StatefulWidget {
  const TodoApi({super.key});

  @override
  State<TodoApi> createState() => _TodoApiState();
}

class _TodoApiState extends State<TodoApi> {
  Future<dynamic> getData() async {
    Response responce = await get(Uri.parse("https://dummyjson.com/todos"));
    if (responce.statusCode == 200) {
      var body = jsonDecode(responce.body);
      return body;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data['todos'].length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        color: Colors.red,
                        child: Column(
                          children: [
                            Text(snapshot.data['todos'][index]['userId']
                                .toString()),
                            Text(snapshot.data['todos'][index]['todo']),
                            Text(snapshot.data['todos'][index]['completed']
                                .toString())
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: Text("No data Found"),
              );
            }
          }),
    );
  }
}
