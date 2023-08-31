import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pickers extends StatefulWidget {
  const Pickers({super.key});

  @override
  State<Pickers> createState() => _PickersState();
}

class _PickersState extends State<Pickers> {
  String? selectedTime;
  String? selectedDate;
  bool? status;

  visibleDatePicker() async {
    DateTime? store = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030));

    if (store != null) {
      setState(() {
        selectedDate = store.toString();
        status = true;
      });
    }

    else{

      status =false;
    }
  }

  visibleTimePicker() async {
    TimeOfDay? store =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    if (store != null) {
      setState(() {
        status = true;
        selectedTime = store.toString();
      });
    }
    else{

      status = false;
    }
  }

  showStatus() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Sucess"),
            content: Text("Submitted datas are correct"),
          );
        });
  }

  showStatusFail() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Fail"),
            content: Text("Submitted datas are not correct"),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Pickers'),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20),
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  visibleDatePicker();
                },
                child: Text("show date picker")),
          ),
          selectedDate == null
              ? Center(child: Text("please select date"))
              : Center(
                  child: Text(
                  selectedDate!,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  visibleTimePicker();
                },
                child: Text("show time picker")),
          ),
          selectedTime == null
              ? Center(child: Text("please select time"))
              : Center(
                  child: Text(
                  selectedTime!,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  if (selectedTime != null && selectedDate != null) {
                    showStatus();
                  } else {
                    showStatusFail();
                  }
                },
                child: Text("Sumbit")),
          )
        ],
      ),
    );
  }
}
