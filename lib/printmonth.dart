import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrintMonth extends StatefulWidget {
  const PrintMonth({super.key});

  @override
  State<PrintMonth> createState() => _PrintMonthState();
}

class _PrintMonthState extends State<PrintMonth> {


  List<String> myList = ["January","februvary","March","April","may","June","July","Augest","Septomber","Octobar","November","Dicember"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Print Month"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context,index) {
          return Container(

            margin: EdgeInsets.all(40),
            padding: EdgeInsets.only(left: 20),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.red,

borderRadius: BorderRadius.all(Radius.circular(10))       ),
            child:Center(
              child: Text(myList[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            )
          );
        }
      ),
    );
  }
}
