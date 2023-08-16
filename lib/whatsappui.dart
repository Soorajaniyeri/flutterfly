import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Whatsappui extends StatefulWidget {
  const Whatsappui({super.key});

  @override
  State<Whatsappui> createState() => _WhatsappuiState();
}

class _WhatsappuiState extends State<Whatsappui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: Text(
          "Whatsapp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 35,
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
                Text(
                  "Chats",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text("Status",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text(
                  "Calls",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  // color: Colors.green,
                  shape: BoxShape.circle),
              child: Image(
                  height: 50,
                  width: 50,
                  image: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png")),
            ),
            title: Text("Sooraj"),
            subtitle: Text("hy"),
            trailing: Text("2:35"),
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: Image(
                  height: 50,
                  width: 50,
                  image: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg")),
            ),
            title: Text("Sooraj"),
            subtitle: Text("hy"),
            trailing: Text("2:35"),
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: Image(
                  height: 50,
                  width: 50,
                  image: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg")),
            ),
            title: Text("Sooraj"),
            subtitle: Text("hy"),
            trailing: Text("2:35"),
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: Image(
                  height: 50,
                  width: 50,
                  image: NetworkImage(
                      "https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg")),
            ),
            title: Text("Sooraj"),
            subtitle: Text("hy"),
            trailing: Text("2:35"),
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg"))),
            ),
            title: Text("Sooraj"),
            subtitle: Text("hy"),
            trailing: Text("2:35"),
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg")),
                  color: Colors.green,
                  shape: BoxShape.circle),
            ),
            title: Text("Ajith"),
            subtitle: Text("hy"),
            trailing: Text("2:35"),
          ),
        ],
      ),
    );
  }
}
