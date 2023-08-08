import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Geeksforgeeks extends StatefulWidget {
  const Geeksforgeeks({super.key});

  @override
  State<Geeksforgeeks> createState() => _GeeksforgeeksState();
}

class _GeeksforgeeksState extends State<Geeksforgeeks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "GeeksforGeeks",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              height: 450,
              width: 270,
              // color: Colors.green.shade200,
              decoration: BoxDecoration(
                  color: Colors.greenAccent.shade100,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 5,
                        blurRadius: 40)
                  ]),

              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        border: Border.all(color: Colors.green, width: 7)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("GG",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  height: 0.8)),
                          Text(
                            "GeeksforGeeks",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 7,
                  ),
                  Text(
                    "GeeksforGeeks",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.green.shade900),
                  ),

                  Container(
                    height: 10,
                  ),
                  Text("GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org."
                      "It contains well writte well thought   and well explained computer science and programming articles,quizzes,projects, interview experiences and much more!!",
                    style: TextStyle(fontSize: 13, color: Colors.green),
                    textAlign: TextAlign.center,
                  ),


                  Container(
                    height: 15,
                  ),

                  Container(

                    height: 30,
                      width: 80,
                   decoration: BoxDecoration(
                     color: Colors.green.shade500,
                     borderRadius: BorderRadius.all(Radius.circular(5))
                   ),
                    child:

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.pan_tool_alt,color: Colors.white,),
                        Text("Visit",style: TextStyle(color: Colors.white,fontSize: 13,))
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
