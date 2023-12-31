import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfly/study2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Listtileexample extends StatefulWidget {
  const Listtileexample({super.key});

  @override
  State<Listtileexample> createState() => _ListtileexampleState();
}

class _ListtileexampleState extends State<Listtileexample> {
  storeData() async {
    SharedPreferences store = await SharedPreferences.getInstance();
    await store.setString("username", "Sooraj");

    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //   return study2();
    // }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        storeData();
      }),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("ListTile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Sooraj",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "9567203630",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
            leading: Container(
              child: Center(
                  child: Text(
                "S",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            ),
          ),
          ListTile(
            title: Text(
              "Sneha",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "8765445679",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
            leading: Container(
              child: Center(
                  child: Text(
                "S",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            ),
          ),
          ListTile(
            title: Text(
              "Vishnu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "987654324",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
            leading: Container(
              child: Center(
                  child: Text(
                "V",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}
