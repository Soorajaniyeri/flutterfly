import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedprefrence extends StatefulWidget {
  const Sharedprefrence({super.key});

  @override
  State<Sharedprefrence> createState() => _SharedprefrenceState();
}

class _SharedprefrenceState extends State<Sharedprefrence> {
  storeSharePref() async {
    SharedPreferences store = await SharedPreferences.getInstance();

    await store.setString("name", "sooraj");
    await store.setBool("status", true);

    await store.setInt("number", 9567203630);
    await store.setStringList("list", ["hello", "hy", "good"]);
  }

  getSharePref() async {
    SharedPreferences store = await SharedPreferences.getInstance();

    String? value = store.getString("name");

    bool? status = store.getBool("status");

    int? number = store.getInt("number");

    List<String>? myList = store.getStringList("list");
    print(value);
    print(status);
    print(number);
    print(myList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                storeSharePref();
              },
              child: Text('Store data')),
          ElevatedButton(
              onPressed: () {
                getSharePref();
              },
              child: Text('Print data'))
        ],
      ),
    );
  }
}
