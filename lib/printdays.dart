import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Printdays extends StatefulWidget {
  const Printdays({super.key});

  @override
  State<Printdays> createState() => _PrintdaysState();
}

class _PrintdaysState extends State<Printdays> {


  List<String> myList = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday",];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Print Days"),
        centerTitle: true,
      ),


      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context,index) {
          return Text(myList[index]);
        }
      ),
    );
  }
}
