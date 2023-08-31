import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pending extends StatefulWidget {
  const Pending({super.key});

  @override
  State<Pending> createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  String? selectedDate;
  String? selectedTime;

  pickDate() async {
    DateTime? myDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(200),
        lastDate: DateTime(2030));

    if (myDate != null) {
      setState(() {
        selectedDate = myDate.toString();
      });
    }
  }

  pickTime() async {
    TimeOfDay? time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (time != null) {
      setState(() {
        selectedTime = time.toString();
      });
    }
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
                  child: Text("Select Date")),
              selectedDate == null
                  ? Text("please select date")
                  : Text(selectedDate!),
              ElevatedButton(
                  onPressed: () {
                    pickTime();
                  },
                  child: Text("Select Time")),
              selectedTime == null
                  ? Text("Please select time")
                  : Text(selectedTime!)
            ],
          ),
        ),
      ),
    );
  }
}
