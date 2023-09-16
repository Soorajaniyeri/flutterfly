import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestingPur extends StatefulWidget {
  const TestingPur({super.key});

  @override
  State<TestingPur> createState() => _TestingPurState();
}

class _TestingPurState extends State<TestingPur> {


  @override
  void initState() {

    viewData();


    // TODO: implement initState
    super.initState();
  }


  String? showName;
  String? showNickName;

  viewData()async{

    SharedPreferences view = await SharedPreferences.getInstance();

String? myNameValue =    view.getString("name");
 String? myNickNameValue = view.getString("nickName");


 if(myNameValue!=null && myNickNameValue!=null){

   setState(() {
     showName = myNameValue;
     showNickName =myNickNameValue;
   });

 }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Column(
        children: [


          showName == null? Text("hello"): Text(showName!),
          showNickName == null? Text("helo"): Text(showNickName!),

        ],
      )
    );
  }
}
