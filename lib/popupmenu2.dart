import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popupmwnu2 extends StatefulWidget {
  const Popupmwnu2({super.key});

  @override
  State<Popupmwnu2> createState() => _Popupmwnu2State();
}

class _Popupmwnu2State extends State<Popupmwnu2> {
  List myList = ["Settings", "About", "Logout"];

  List myIcon = [Icon(Icons.settings),Icon(Icons.info),Icon(Icons.logout),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Popumenu2'),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            List<PopupMenuEntry<dynamic>> a = [];

            for (int i = 0; i < myList.length; i++) {
              a.add(PopupMenuItem(
                onTap: () {
                  if (myList[i] == "Settings") {
                    print("Settings");
                  } else if (myList[i] == "About") {
                    print("About");
                  } else if (myList[i] == "Logout") {
                    print("Logout");
                  }
                },
                child: Row(
                  children: [
                    Text(myList[i]),
                    SizedBox(
                      width: 10,
                    ),
                    myIcon[i],
                  ],
                ),
                value: myList[i],
              ));
            }

            return a;
          })
        ],
      ),
    );
  }
}
