import 'package:flutter/material.dart';

class ColumnAlignment extends StatefulWidget {
  const ColumnAlignment({super.key});

  @override
  State<ColumnAlignment> createState() => _ColumnAlignmentState();
}

class _ColumnAlignmentState extends State<ColumnAlignment> {
  String? myvalue;

  TextEditingController mytxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Column Alignment"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 150,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.red,
              child: Center(child: Text("Hello Welcome")),
            ),
            Container(
              height: 100,
              width: 250,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.blue,
            ),

//             TextField(
//               controller:mytxt ,
//             ),
//
//
//             FloatingActionButton(onPressed: (){
// setState(() {
//
//   myvalue=mytxt.text;
//
//
// });
//
//
//             })
          ],
        ),
      ),
    );
  }
}
