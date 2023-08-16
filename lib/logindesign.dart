import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logindesign extends StatefulWidget {
  const Logindesign({super.key});

  @override
  State<Logindesign> createState() => _LogindesignState();
}

class _LogindesignState extends State<Logindesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(
            height: 10,
          ),
          Image(
              height: 100,
              width: 100,
              image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/009/589/758/original/location-location-pin-location-icon-transparent-free-png.png")),
          Center(
              child: Text("Let's sign you in.",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 30),
            child: Text("Sign in with your data that you have entered during your regulations",
                style: TextStyle(
                  color: Colors.grey,
                )),
          ),

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                  //helperText: "hello"
                  // hintText: "Email",
                  // hintStyle: TextStyle(color: Colors.grey.shade400)

                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              //cursorHeight: 5,

              obscureText: true,
              decoration: InputDecoration(

                  //helperText: "hello"
                  //   hintText: "password",
                  //   hintStyle: TextStyle(color: Colors.grey.shade400),
                  labelText: "password",
                  labelStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forget password?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(
                  child: Text(
                "Sign in",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(

                  //color: Colors.black,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png"),

                    height: 23,
                    // width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign in with Google",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                " Register",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

            ],
          )
        ],
      ),
    );
  }
}
