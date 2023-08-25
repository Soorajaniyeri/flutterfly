import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupmenuExample extends StatefulWidget {
  const PopupmenuExample({super.key});

  @override
  State<PopupmenuExample> createState() => _PopupmenuExampleState();
}

class _PopupmenuExampleState extends State<PopupmenuExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Popup Menu"),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.add),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.verified_user,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("About us"),
                    ],
                  ),
                  value: "About us",
                ),
                PopupMenuItem(
                  child: Text("Close"),
                  value: "Close",
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}
