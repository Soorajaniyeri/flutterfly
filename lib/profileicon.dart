import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profileicon extends StatefulWidget {
  const Profileicon({super.key});

  @override
  State<Profileicon> createState() => _ProfileiconState();
}

class _ProfileiconState extends State<Profileicon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.verified_user,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
