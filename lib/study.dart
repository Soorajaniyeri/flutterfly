import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Study extends StatefulWidget {
  const Study({super.key});

  @override
  State<Study> createState() => _StudyState();
}

class _StudyState extends State<Study> {
  TextEditingController number = TextEditingController();

  dynamic fact;

  Future<dynamic> loadData(String number) async {
    Response res = await get(Uri.parse("http://numbersapi.com/$number?json"));
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      setState(() {
        fact = body;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: number,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.black))),
            ),
            ElevatedButton(
                onPressed: () {
                  if (number.text.isNotEmpty) {
                    loadData(number.text);
                  }


                  else{

                  }
                },
                child: Text('please select')),
            fact == null ? Text("click") : Text(fact['text'])
          ],
        ),
      ),
    );
  }
}
