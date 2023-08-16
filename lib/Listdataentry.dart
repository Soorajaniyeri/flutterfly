import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listdata extends StatefulWidget {
  const Listdata({super.key});

  @override
  State<Listdata> createState() => _ListdataState();
}

class _ListdataState extends State<Listdata> {
  TextEditingController dataEntry = TextEditingController();
  List myList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Data Entry"),
      ),
      body: Column(
        children: [
          TextField(
            controller: dataEntry,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  myList.add(dataEntry.text);
                });
              },
              child: Text("Update")),
          Expanded(
            child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Center(child: Text(myList[index]));
                }),
          ),
        ],
      ),
    );
  }
}
