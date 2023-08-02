import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldSum extends StatefulWidget {
  const TextfieldSum({super.key});

  @override
  State<TextfieldSum> createState() => _TextfieldSumState();
}

class _TextfieldSumState extends State<TextfieldSum> {
  String? value1;
  String? value2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("TextFieldSum "),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              value1 = value;
              print(value);
            },
          ),
          TextField(
            onChanged: (value) {
              value2 = value;
            },
          ),
          Container(
            height: 50,
          ),
          FloatingActionButton(onPressed: () {
            int sum = int.parse(value1!) + int.parse(value2!);

            print(sum);
          })
        ],
      ),
    );
  }
}
