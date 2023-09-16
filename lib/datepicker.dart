import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DatepickerExample extends StatefulWidget {
  const DatepickerExample({super.key});

  @override
  State<DatepickerExample> createState() => _DatepickerExampleState();
}

class _DatepickerExampleState extends State<DatepickerExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  String? now;
  String? selectedName;

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

  getData() async {
    SharedPreferences profile = await SharedPreferences.getInstance();
    String? inputName = profile.getString("ff");

    if (inputName != null) {
      setState(() {
        selectedName = inputName;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Center(child: Text(selectedName!)),
        // Center(
        //   child: ElevatedButton(
        //       onPressed: () {
        //         selectDate();
        //       },
        //       child: Text("select date")),
        // ),
        // now == null ? Text(" plese select date ") : Text(now!),
      ],
    ));
  }
}
