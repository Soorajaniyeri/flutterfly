import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tests extends StatefulWidget {
  const Tests({super.key});

  @override
  State<Tests> createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  GlobalKey<FormState> mykey = GlobalKey<FormState>();

  TextEditingController myctrl = TextEditingController();

  String? mytxt;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Learning "),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Form(
              key: mykey,
              child: Container(
                //height: 300,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey)),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        validator: (myvalue) {
                          if (myvalue!.isEmpty) {
                            return "please enter";
                          }
                        },
                        controller: myctrl,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        bool myStatus = mykey.currentState!.validate();

                        if (myStatus == true) {
                          setState(() {
                            mytxt = myctrl.text;
                          });
                        }
                      },
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.red),
                child: Center(
                    child: mytxt == null
                        ? Text(
                            "your text here",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text(mytxt!))),
          ),
        ],
      ),
    );
  }
}
