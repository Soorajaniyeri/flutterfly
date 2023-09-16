import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfly/testingpurpose.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefTask extends StatefulWidget {
  const SharedPrefTask({super.key});

  @override
  State<SharedPrefTask> createState() => _SharedPrefTaskState();
}

class _SharedPrefTaskState extends State<SharedPrefTask> {
  TextEditingController myTxt = TextEditingController();
  TextEditingController myNick = TextEditingController();

  String? selectedName;
  String? selectedNickName;

  storeData() async {
    SharedPreferences storeData = await SharedPreferences.getInstance();
    await storeData.setString("name", myTxt.text);
    await storeData.setString("nickName",myNick.text );
  }

  viewData() async {
    SharedPreferences storeData = await SharedPreferences.getInstance();

    String? store = storeData.getString("name");
    String? store2 = storeData.getString("nickName");

    if (store != null) {
      setState(() {
        selectedName = store;
        selectedNickName = store2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("SharePref"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: "please enter your name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              controller: myTxt,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: "please enter your nickname",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              controller: myNick,
            ),
          ),
          ElevatedButton(
              onPressed: () {


                if(myTxt.text.isNotEmpty && myNick.text.isNotEmpty){

                  storeData();



                }

              },
              child: Text("Store data")),
          ElevatedButton(
              onPressed: () {
                viewData();
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TestingPur();

                }));


              },
              child: Text("View data")),
          selectedName == null
              ? Text("Please typ your name")
              : Text(selectedName!),


          selectedNickName == null
              ? Text("Please typ your name")
              : Text(selectedNickName!)
        ],
      ),
    );
  }
}
