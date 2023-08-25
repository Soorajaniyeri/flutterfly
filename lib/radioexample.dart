import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  String gender = "not selected";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Radio Button"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Radio(
              value: "male",
              groupValue: gender,
              onChanged: (gettingValue) {
                setState(() {
                  gender = gettingValue!;
                });
              }),
          Text("male"),
          Radio(
              value: "female",
              groupValue: gender,
              onChanged: (gettingValue) {
                setState(() {
                  gender = gettingValue!;
                });
              }),
          Text("female"),


          SizedBox(
            width: 10,
          ),
          
          ElevatedButton(onPressed: (){}, child: Text("click me"))
        ],
      ),
      
      
    );
  }
}
