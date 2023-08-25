import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatepickerExample extends StatefulWidget {
  const DatepickerExample({super.key});

  @override
  State<DatepickerExample> createState() => _DatepickerExampleState();
}

class _DatepickerExampleState extends State<DatepickerExample> {
  String? now;

  selectDate() async {
    DateTime? store = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));

    setState(() {
      now = store.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ElevatedButton(
              onPressed: () {
                selectDate();
              },
              child: Text("select date")),
        ),
        now == null ? Text(" plese select date ") : Text(now!),
      ],
    ));
  }
}
