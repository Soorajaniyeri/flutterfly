import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'datepicker.dart';

class Look extends StatefulWidget {
  const Look({super.key});

  @override
  State<Look> createState() => _LookState();
}

class _LookState extends State<Look> {
  TextEditingController myTxt = TextEditingController();

  storeData() async {
    SharedPreferences profile = await SharedPreferences.getInstance();

    profile.setString("value", myTxt.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: myTxt,
          ),
          ElevatedButton(
              onPressed: () {
                if (myTxt.text.isNotEmpty) {
                  storeData();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DatepickerExample();
                  }));
                }
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
