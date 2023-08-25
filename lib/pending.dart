import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pending extends StatefulWidget {
  const Pending({super.key});

  @override
  State<Pending> createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  String? selectedDate;

  pickDate() async {
    DateTime? myDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(200),
        lastDate: DateTime(2030));

    setState(() {
      selectedDate = myDate.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Date Picker "),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Logout"))
            ];
          })
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    pickDate();
                  },
                  child: Text("Selecte Date")),
              selectedDate == null
                  ? Text("please select date")
                  : Text(selectedDate!)
            ],
          ),
        ),
      ),
    );
  }
}
