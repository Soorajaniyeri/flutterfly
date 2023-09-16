import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterMapExample extends StatefulWidget {
  const FlutterMapExample({super.key});

  @override
  State<FlutterMapExample> createState() => _FlutterMapExampleState();
}

class _FlutterMapExampleState extends State<FlutterMapExample> {
  List items = [
    {
      "id": 7,
      "email": "michael.lawson@reqres.in",
      "first_name": "Michael",
      "last_name": "Lawson",
      "avatar": "https://reqres.in/img/faces/7-image.jpg"
    },
    {
      "id": 8,
      "email": "lindsay.ferguson@reqres.in",
      "first_name": "Lindsay",
      "last_name": "Ferguson",
      "avatar": "https://reqres.in/img/faces/8-image.jpg"
    },
    {
      "id": 9,
      "email": "tobias.funke@reqres.in",
      "first_name": "Tobias",
      "last_name": "Funke",
      "avatar": "https://reqres.in/img/faces/9-image.jpg"
    },
    {
      "id": 10,
      "email": "byron.fields@reqres.in",
      "first_name": "Byron",
      "last_name": "Fields",
      "avatar": "https://reqres.in/img/faces/10-image.jpg"
    },
    {
      "id": 11,
      "email": "george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "id": 12,
      "email": "rachel.howell@reqres.in",
      "first_name": "Rachel",
      "last_name": "Howell",
      "avatar": "https://reqres.in/img/faces/12-image.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("User Details"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(items[index]["avatar"])),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                title: Text(
                  items[index]["first_name"],
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(items[index]["email"]),
              ),
            );
          }),
    );
  }
}
