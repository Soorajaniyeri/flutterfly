import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FuturaLabs extends StatefulWidget {
  const FuturaLabs({super.key});

  @override
  State<FuturaLabs> createState() => _FuturaLabsState();
}

class _FuturaLabsState extends State<FuturaLabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Futura Labs",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(left: 5),
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.icon-icons.com/icons2/2518/PNG/512/user_icon_151016.png"),
                            scale: 10),
                        color: Colors.grey.shade400,
                        shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Sooraj",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Organization Code EAKVF",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                //onTap: (){},
                leading: Icon(Icons.celebration, color: Colors.grey),
                title: Text(
                  "Course Certifivcates",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                trailing: Container(
                  height: 25,
                  width: 44,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                      child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(Icons.file_download_outlined, color: Colors.grey),
                title: Text(
                  "Offline Downloads",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                trailing: Container(
                  height: 25,
                  width: 44,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                      child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(Icons.folder_copy, color: Colors.grey),
                title: Text(
                  "Study Material",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                // trailing: Container(
                //   height: 25,
                //   width: 44,
                //   decoration: BoxDecoration(color: Colors.blue,
                //       borderRadius: BorderRadius.all(Radius.circular(30))
                //
                //   ),
                //
                //
                //   child: Center(child: Text("NEW",style: TextStyle(color: Colors.white),)),
                //
                // ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(Icons.sticky_note_2_sharp, color: Colors.grey),
                title: Text(
                  "Free Tests",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                trailing: Container(
                  height: 25,
                  width: 44,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                      child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(Icons.chat, color: Colors.grey),
                title: Text(
                  "Students Testimonial",
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
                trailing: Container(
                  height: 25,
                  width: 44,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                      child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(Icons.supervised_user_circle, color: Colors.grey),
                title: Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                // trailing: Container(
                //   height: 25,
                //   width: 44,
                //   decoration: BoxDecoration(color: Colors.blue,
                //       borderRadius: BorderRadius.all(Radius.circular(30))
                //
                //   ),
                //
                //
                //   child: Center(child: Text("NEW",style: TextStyle(color: Colors.white),)),
                //
                // ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(Icons.settings, color: Colors.grey),
                title: Text(
                  "Settings",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                // trailing: Container(
                //   height: 25,
                //   width: 44,
                //   decoration: BoxDecoration(color: Colors.blue,
                //       borderRadius: BorderRadius.all(Radius.circular(30))
                //
                //   ),
                //
                //
                //   child: Center(child: Text("NEW",style: TextStyle(color: Colors.white),)),
                //
                // ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(Icons.question_mark, color: Colors.grey),
                title: Text(
                  "How to use the App",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                trailing: Container(
                  height: 25,
                  width: 44,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                      child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(Icons.verified_user, color: Colors.grey),
                title: Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                trailing: Container(
                  height: 25,
                  width: 44,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                      child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 45,
              child: ListTile(
                // onTap: (){},
                leading: Icon(
                  Icons.payment,
                  color: Colors.grey,
                ),
                title: Text(
                  "Payments",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                trailing: Container(
                  height: 25,
                  width: 44,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                      child: Text(
                    "NEW",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 25),
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        height: 35,
                        // width: 20,

                        image: NetworkImage(
                            "https://img.freepik.com/premium-vector/round-facebook-logo-isolated-white-background_469489-897.jpg?w=2000")),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Share on Facebook",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
