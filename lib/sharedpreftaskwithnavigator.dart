import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Navigator.dart';
import 'homeuserprofile.dart';

class SharedNavigator extends StatefulWidget {
  const SharedNavigator({super.key});

  @override
  State<SharedNavigator> createState() => _SharedNavigatorState();
}

class _SharedNavigatorState extends State<SharedNavigator> {
  TextEditingController name = TextEditingController();
  TextEditingController nickName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();

  String? userName;
  String? userNickName;
  String? userEmail;
  String? userMobile;

  storeData() async {
    SharedPreferences store = await SharedPreferences.getInstance();
    await store.setString("name", name.text);
    await store.setString("nickName", nickName.text);
    await store.setString("email", email.text);
    await store.setString("mobile", mobile.text);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('SharedPrefNav'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Please Enter Your Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              controller: name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Please Enter Your Nickname",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              controller: nickName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Please Enter Your Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              controller: email,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Please Enter Your Mobile number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              controller: mobile,
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: ()async {
                  if (name.text.isNotEmpty &&
                      nickName.text.isNotEmpty &&
                      email.text.isNotEmpty &&
                      mobile.text.isNotEmpty &&
                      mobile.text.length == 10) {
                   await storeData();
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return HomeUserProfile();
                   }));
                  }
                },
                child: Text("Store")),
          ),

          // ElevatedButton(onPressed: (){
          //
          //   Navigator.push(context, MaterialPageRoute(builder: (context){
          //
          //
          //     return HomeUserProfile();
          //   }));
          //
          // }, child: Text("Submit"))
        ],
      ),
    );
  }
}
