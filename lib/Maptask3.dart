import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapTask3 extends StatefulWidget {
  const MapTask3({super.key});

  @override
  State<MapTask3> createState() => _MapTask3State();
}

class _MapTask3State extends State<MapTask3> {
  dynamic items = {
    "data": {
      "id": 2,
      "email": "janet.weaver@reqres.in",
      "first_name": "Janet",
      "last_name": "Weaver",
      "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    "support": {
      "url": "https://reqres.in/#support-heading",
      "text":
          "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("User Details"),
          centerTitle: true,
        ),
        // body: Container(
        //   margin: EdgeInsets.all(10),
        //  height: 200,
        //
        //   child: ListTile(
        //
        //     leading: Container(
        //       height: 60,
        //       width: 60,
        //       decoration: BoxDecoration(
        //
        //         shape: BoxShape.circle,
        //         //borderRadius: BorderRadius.all(Radius.circular(20)),
        //
        //         image: DecorationImage(
        //
        //             image: NetworkImage(items["data"]["avatar"]))
        //       ),
        //     ),
        //     title: Row(
        //       crossAxisAlignment: CrossAxisAlignment.end,
        //       children: [
        //         Text(items["data"]["first_name"],style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
        //         SizedBox(width: 5,),
        //         Text(items["data"]["last_name"],style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
        //       ],
        //     ),
        //
        //     subtitle:Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Text(items["data"]["email"],style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold)),
        //         Text(items["support"]["text"],style: TextStyle(color: Colors.green)),
        //
        //       ],
        //     ),
        //     trailing: Text(items["data"]["id"].toString(),style: TextStyle(fontWeight: FontWeight.bold),),
        //   ),
        // ) ,

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(items["data"]["avatar"])),
                            shape: BoxShape.circle),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.white),
                          height: 30,
                          width: 30,
                          child: Center(
                              child: Text(
                            items["data"]["id"].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )),
                        ),
                      )
                    ]),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          items["data"]["first_name"],
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          items["data"]["last_name"],
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),

                    // Container(
                    //   decoration:   BoxDecoration(
                    //      border: Border.all(color: Colors.black),
                    //     borderRadius: BorderRadius.all(Radius.circular(10))
                    //   ),
                    //   height: 30,
                    //   width: 30,
                    //   child: Center(child: Text(items["data"]["id"].toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                    //
                    // ),

                    Text(
                      items["data"]["email"],
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      items["support"]["text"],
                      style: const TextStyle(color: Colors.green, fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Text(
                      items["support"]["url"],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
