import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Controller.dart';
import 'alertbox.dart';
import 'datepicker.dart';
import 'datepickertask.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({super.key});

  @override
  State<BottomNavigationExample> createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int selected = 0;
  List pages = [AlertBoxExample(),DatepickerExample(),DatePickerTask (),Controller()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.yellow,
      //   title: Text("BottomNavigationBar"),
      //   centerTitle: true,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                label: "Profile"),

          ]),


      body: pages[selected],
    );
  }
}
