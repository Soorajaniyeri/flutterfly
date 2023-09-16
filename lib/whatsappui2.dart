import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Whatsappui2 extends StatefulWidget {
  const Whatsappui2({super.key});

  @override
  State<Whatsappui2> createState() => _Whatsappui2State();
}

class _Whatsappui2State extends State<Whatsappui2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.teal,
          title: Text("WhatsApp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          actions: [
            Icon(Icons.search,color: Colors.white,),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.more_vert,color: Colors.white,),

          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.only(bottom: 10,top: 10),



              tabs: [




            Icon(Icons.camera_alt,color: Colors.white,),
            Text("CHAT",style: TextStyle(color: Colors.white),),
            Text("STATUS",style: TextStyle(color: Colors.white)),
            Text("CALLS",style: TextStyle(color: Colors.white)),

          ]),
        ),
        body: ListView(
          children: [


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
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
              ),
              title: Text("Sooraj"),
              subtitle: Text("hello where are you"),
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
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
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
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
              ),
              title: Text("Sooraj"),
              subtitle: Text("How is you"),
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
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
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
                            "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png"))),
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
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
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
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
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
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
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
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper-thumbnail.png")),
              ),
              title: Text("Sooraj"),
              subtitle: Text("hy"),
              trailing: Text("2:35"),
            ),

          ],
        ),
      ),
    );
  }
}
