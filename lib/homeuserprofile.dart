import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfly/sharedpref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeUserProfile extends StatefulWidget {
  const HomeUserProfile({super.key});

  @override
  State<HomeUserProfile> createState() => _HomeUserProfileState();
}

class _HomeUserProfileState extends State<HomeUserProfile> {
  String? userName;
  String? userNickName;
  String? userEmail;
  String? userMobile;

  @override
  void initState() {
    showData();

    // TODO: implement initState
    super.initState();
  }

  showData() async {
    SharedPreferences store = await SharedPreferences.getInstance();

    String? getName = store.getString("name");
    String? getNickName = store.getString("nickName");
    String? getEmail = store.getString("email");
    String? getMobile = store.getString("mobile");

    print(getName);
    print(getNickName);
    print(getEmail);
    print(getMobile);

    if (getName != null &&
        getNickName != null &&
        getEmail != null &&
        getMobile != null) {
      setState(() {
        userName = getName;
        userNickName = getNickName;
        userEmail = getEmail;
        userMobile = getMobile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.blue,
              size: 30,
            ),
            title:userName==null? SizedBox(): Text(
              userName!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle:userNickName == null? SizedBox(): Text(userNickName!),
            trailing: Column(
              children: [
                userEmail == null? SizedBox():
                Text(userEmail!), Text(userMobile!)],
            ),
          )
        ],
      ),
    );
  }
}
