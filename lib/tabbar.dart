import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'alertbox.dart';
import 'datepicker.dart';
import 'datepickertask.dart';

class TabbarExamople extends StatefulWidget {
  const TabbarExamople({super.key});

  @override
  State<TabbarExamople> createState() => _TabbarExamopleState();
}

class _TabbarExamopleState extends State<TabbarExamople> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('TabBar'),
          bottom: TabBar(


              tabs: [
            Text("Chat"),
            Text("Profile"),
            Text("Logout")
          ]),
        ),

        body: TabBarView(children: [
            AlertBoxExample(),DatepickerExample(),DatePickerTask ()

        ]),
      ),
    );
  }
}
