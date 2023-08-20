import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.yellow,
    ),
      drawer: Drawer(
child: ListView(
  children: [
    DrawerHeader(child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(

       // shape: BoxShape.circle,

        border: Border.all(
          color: Colors.black
        )
      ),
    )),
    
    ListTile(
      leading:Text("Settings"),
      trailing: Icon(Icons.settings),
    ),


    ListTile(
      leading:Text("Settings"),
      trailing: Icon(Icons.settings),
    ),


    ListTile(
      leading:Text("Settings"),
      trailing: Icon(Icons.settings),
    ),


    ListTile(
      leading:Text("Settings"),
      trailing: Icon(Icons.settings),
    ),
    ListTile(
      leading:Text("Settings"),
      trailing: Icon(Icons.settings),
    )
  ],
),
      ),
    );
  }
}
