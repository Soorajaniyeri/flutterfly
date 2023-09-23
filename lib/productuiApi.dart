import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductUiApi extends StatefulWidget {
  const ProductUiApi({super.key});

  @override
  State<ProductUiApi> createState() => _ProductUiApiState();
}

class _ProductUiApiState extends State<ProductUiApi> {
  Future<dynamic> getProduct() async {
    Response responce = await get(Uri.parse("https://dummyjson.com/products"));

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
        title: Text("My Kart",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.grey,
              ),
            );
          }

          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data['products'].length,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(20),
                      //height: 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        snapshot.data['products'][index]
                                            ['thumbnail']))),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            snapshot.data['products'][index]['title'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            snapshot.data['products'][index]['category'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            snapshot.data['products'][index]["description"],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                snapshot.data['products'][index]
                                            ["discountPercentage"]
                                        .toString() +
                                    "% off",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "₹ ${snapshot.data['products'][index]["price"]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          Text(
                            "${snapshot.data['products'][index]['stock']} Stock only",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(
                        padding: EdgeInsets.only(left: 5, right: 5),

                        child: Center(
                          child: Text(
                            snapshot.data['products'][index]['brand'],
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),

                        height: 30,
                        // width: 80,
                        color: Colors.green,
                      ),
                    )
                  ]);
                });
          } else {
            return Center(
              child: Text("No Data Found"),
            );
          }
        },
      ),
    );
  }
}
