import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  String? input;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Currency Converter"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              input = value;
            },
          ),
          FloatingActionButton(onPressed: () {
            int finalvalue = int.parse(input!);
            int output = finalvalue * 80;

            print(output);
          })
        ],
      ),
    );
  }
}
