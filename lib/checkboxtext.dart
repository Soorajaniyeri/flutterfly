import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkboxlanguage extends StatefulWidget {
  const Checkboxlanguage({super.key});

  @override
  State<Checkboxlanguage> createState() => _CheckboxlanguageState();
}

class _CheckboxlanguageState extends State<Checkboxlanguage> {
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  bool checkBox4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Laungauge Selection"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: (checkBox1),
                  onChanged: (getChk1) {
                    setState(() {
                      checkBox1 = getChk1!;
                    });
                  }),
              Text("Malayalam"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: (checkBox2),
                  onChanged: (getChk2) {
                    setState(() {
                      checkBox2 = getChk2!;
                    });
                  }),
              Text("English"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: (checkBox3),
                  onChanged: (getChk3) {
                    setState(() {
                      checkBox3 = getChk3!;
                    });
                  }),
              Text("Hindi"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: (checkBox4),
                  onChanged: (getChk4) {
                    setState(() {
                      checkBox4 = getChk4!;
                    });
                  }),
              Text("Maths"),
            ],
          )
        ],
      ),
    );
  }
}
