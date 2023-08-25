import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedForm extends StatefulWidget {
  const DetailedForm({super.key});

  @override
  State<DetailedForm> createState() => _DetailedFormState();
}

class _DetailedFormState extends State<DetailedForm> {
  GlobalKey<FormState> myKeyname = GlobalKey<FormState>();

  //GlobalKey<FormState> myKeyemail = GlobalKey<FormState>();

  String gender = "unselected";
  bool checkBox1 = false;
  bool checkBox2 = false;
  bool checkBox3 = false;
  bool checkBox4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey)),
              child: Form(
                key: myKeyname,
                child: ListView(
                  children: [
                    Center(child: Text("Registrtion Form")),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Name : "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38, right: 10),
                      child: TextFormField(
                        validator: (myvalue) {
                          if (myvalue!.isEmpty) {
                            return "please enter something";
                          }
                        },
                        //key: myKeyname,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.verified_user),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Email : "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38, right: 10),
                      child: TextFormField(
                        validator: (myvalue) {
                          if (myvalue!.isEmpty) {
                            return "please typ smthng";
                          }
                        },
                        // key: myKeyemail,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Phone: "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38, right: 10),
                      child: TextFormField(
                        validator: (myvalue) {
                          if (myvalue!.isEmpty) {
                            return "please enter something";
                          }

                          if (!(myvalue.length == 10)) {
                            return "please enter 10 number";
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Password : "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38, right: 10),
                      child: TextFormField(
                        obscureText: true,
                        validator: (myvalue) {
                          if (myvalue!.isEmpty) {
                            return "please typ smthng";
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Gender : "),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 38),
                      child: Row(
                        children: [
                          Radio(
                              value: "male",
                              groupValue: gender,
                              onChanged: (gettingValue) {
                                setState(() {
                                  gender = gettingValue!;
                                });
                              }),
                          Text("male"),
                          Radio(
                              value: "female",
                              groupValue: gender,
                              onChanged: (gettingValue) {
                                setState(() {
                                  gender = gettingValue!;
                                });
                              }),
                          Text("female"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Spoken : "),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: checkBox1,
                                  onChanged: (gettingValue) {
                                    setState(() {
                                      checkBox1 = gettingValue!;
                                    });
                                  }),
                              Text("Malayalam")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: checkBox2,
                                  onChanged: (gettingValue) {
                                    setState(() {
                                      checkBox2 = gettingValue!;
                                    });
                                  }),
                              Text("English")
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 80),
                      child: InkWell(
                        onTap: () {
                          bool status = myKeyname.currentState!.validate();

                          if (status == true) {
                            if (checkBox1 == true ||
                                checkBox2 == true ||
                                checkBox3 == true ||
                                checkBox4 == true) {
                              if (gender == "male" || gender == "female") {
                                print("sucess");
                              } else {
                                print("please select");
                              }

                              print("sucess");
                            } else {
                              print("please select");
                            }
                          } else {
                            print("false");
                          }
                        },
                        child: Container(
                          height: 60,
                          //width: 100,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.add), Text("update now")],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
