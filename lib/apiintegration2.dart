import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiGet2 extends StatefulWidget {
  const ApiGet2({super.key});

  @override
  State<ApiGet2> createState() => _ApiGet2State();
}

class _ApiGet2State extends State<ApiGet2> {
  // https://reqres.in/api/unknown/2

  dynamic output;

  getDataFromApi() async {
    Response store = await get(Uri.parse("https://reqres.in/api/unknown/2"));

    if (store.statusCode == 200) {
      var myData = jsonDecode(store.body);

      setState(() {
        output = myData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("ApiTask"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                getDataFromApi();
              },
              child: Text("click me")),
          Center(
            child: Container(

              padding: EdgeInsets.all(20),
              // height: 180,
              // width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(color: Colors.grey)),
              child: Column(

                children: [
                  Stack(
                    children:[ Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(

                          image: DecorationImage(image: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEicB9gc5_lg3P46ANnuX2rYADRzIwm2IL9qAX6yMr7WWf93-HodTVkvZhoC8M5t4l1hdxd1HXCwSkLnBjjQxIO5c6PcCW3cB1Pa6d9FK_VmieBjKDo3-hq82_rF4TbeQlWMcHRvE8gB5Qz0T764Wzehs5nTazmu4bIsAodR4xqgE1PjmM2aekDwXsjUam8/s1600/user%20%281%29.png")),
                          shape: BoxShape.circle
                      
                      
                      ),

                    ),

                      Positioned(
                        right: -3,
                        bottom: -5,
                        child: Container(
                          height: 30,
                          width: 30,

                          //margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                            shape: BoxShape.circle,

                          ),


                          child: Center(child:output == null? SizedBox(): Text(output['data']['id'].toString())),


                        ),
                      )
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  output == null ? SizedBox() : Text(output["data"]["name"],style:TextStyle(fontWeight: FontWeight.bold)),
                    output == null? SizedBox():    Text(output['data']['year'].toString()),


             ] ),
            ),
          )
        ],
      ),
    );
  }
}
