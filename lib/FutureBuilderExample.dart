import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'Modelclass.dart';

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {
  Future<JsonApi> getData() async {
    Response responce = await get(Uri.parse("https://dummyjson.com/products"));
    if (responce.statusCode == 200) {
      var body = JsonApi.fromJson(jsonDecode(responce.body));
      return body;
    } else {
      throw "fg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Future Builder with Api"),
        centerTitle: true,
      ),
      body: FutureBuilder<JsonApi>(
          future: getData(),
          builder: (context, AsyncSnapshot<JsonApi> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              List? myList = snapshot.data!.products;
              return ListView.builder(
                  itemCount: myList!.length,
                  itemBuilder: (context, index) {
                    // return Text("${myList[index].id}");


                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: [
                          
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: NetworkImage(myList[index].thumbnail!))
                            ),
                          ),


                      Text("${myList[index].id}"),
                          Text(myList[index].title.toString()),
                          
                          Text(myList[index].discountPercentage.toString()),
                          Text(myList[index].price.toString())
                        ],
                      ),

                    );

                  });
            } else {
              return Center(
                child: Text("No Data Found ${snapshot.error}"),
              );
            }
          }),
    );
  }
}
