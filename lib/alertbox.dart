import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBoxExample extends StatefulWidget {
  const AlertBoxExample({super.key});

  @override
  State<AlertBoxExample> createState() => _AlertBoxExampleState();
}

class _AlertBoxExampleState extends State<AlertBoxExample> {
  showAlertBox() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Confirm Window"),
            content: Text("Purchase your order now"),
            actions: [
              ElevatedButton(onPressed: () {}, child: Text("Purchase")),
              ElevatedButton(onPressed: () {}, child: Text("Cancel"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     PopupMenuButton(itemBuilder: (context) {
      //       return [
      //         PopupMenuItem(child: Text("Settings")),
      //         PopupMenuItem(child: Text("Logout")),
      //       ];
      //     })
      //   ],
      //   backgroundColor: Colors.yellow,
      //   title: Text('Alert Box'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showAlertBox();
                },
                child: Text("AlertBox"))
          ],
        ),
      ),
    );
  }
}
