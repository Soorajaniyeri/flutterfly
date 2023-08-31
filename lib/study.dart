import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Study extends StatefulWidget {
  const Study({super.key});

  @override
  State<Study> createState() => _StudyState();
}

class _StudyState extends State<Study> {
  String gender = "Not Selected";
  bool Malayalam = false;
  String? selectedDate;

  showSuccess() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Hello"),
          );
        });
  }

  openDp()async {


 DateTime? store =  await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2025));

 if(store!=null){

 setState(() {
   selectedDate = store.toString();
 });

 print(selectedDate);}


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: ListView(
        children: [
          Radio(
              value: "male",
              groupValue: gender,
              onChanged: (gettingValue) {
                setState(() {
                  gender = gettingValue!;
                });

                gender = gettingValue!;
                print(gettingValue);
                print(gender);
              }),
          Radio(
              value: "female",
              groupValue: gender,
              onChanged: (gettingValue) {
                setState(() {
                  gender = gettingValue!;
                });

                gender = gettingValue!;
                print(gettingValue);
                print(gender);
              }),
          Checkbox(
              value: Malayalam,
              onChanged: (gettingValue) {
                print(gettingValue);
                setState(() {
                  Malayalam = gettingValue!;
                });
              }),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    showSuccess();
                  },
                  child: Text("click"))),
          Center(
              child: ElevatedButton(onPressed: () {

                openDp();
                // print(selectedDate);
              }, child: Text("showDP"))),

          selectedDate == null? Text("Please Select Date"): Text(selectedDate!)
        ],
      ),
    );
  }
}
