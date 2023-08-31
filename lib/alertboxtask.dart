import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFldtsk extends StatefulWidget {
  const TextFldtsk({super.key});

  @override
  State<TextFldtsk> createState() => _TextFldtskState();
}

class _TextFldtskState extends State<TextFldtsk> {
  TextEditingController nameTxt = TextEditingController();
  TextEditingController emailTxt = TextEditingController();
  TextEditingController numberTxt = TextEditingController();

  String? selectedDob;
  // String? checkDb = "getting data";

  chooseDob() async {
    DateTime? store = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2030));

    if (store != null) {
      setState(() {
        selectedDob = store.toString();

      });
    }
  }

  showSuccess() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Sucess"),
            content: Text("submitted datas are correct"),
          );
        });
  }

  showFail() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Failed"),
            content: Text("Please complete the form correctly"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 30, top: 20),
              child: TextField(
                controller: nameTxt,
                decoration: InputDecoration(
                    labelText: "please enter your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: numberTxt,
                decoration: InputDecoration(
                    labelText: "please enter your number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailTxt,
                decoration: InputDecoration(
                    labelText: "please enter your email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      chooseDob();
                    },
                    child: Text("Choose Dob")),
              ),
            ),
            selectedDob == null
                ? Text("")
                : Center(
                    child: Text(
                    selectedDob!,
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, bottom: 10, top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    if (nameTxt.text.isNotEmpty &&
                        numberTxt.text.isNotEmpty &&
                        numberTxt.text.length == 10 &&
                        emailTxt.text.isNotEmpty  && selectedDob!=null) {
                      showSuccess();
                    } else {
                      showFail();
                    }
                  },
                  child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}
