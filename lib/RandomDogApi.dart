import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RandomDogApi extends StatefulWidget {
  const RandomDogApi({super.key});

  @override
  State<RandomDogApi> createState() => _RandomDogApiState();
}

class _RandomDogApiState extends State<RandomDogApi> {
  Future<dynamic> getPhoto() async {
    Response responce =
        await get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
    if (responce.statusCode == 200) {
      var body = jsonDecode(responce.body);

      return body;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {

        });
      }),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Random Dog Api"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getPhoto(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              return Center(
                child: Container(
                  // height: 200,
                  // width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(snapshot.data['message']))),
                ),
              );
            } else {
              return Center(
                child: Text("No data found"),
              );
            }
          }),
    );
  }
}
