import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Userdetails extends StatefulWidget {
  const Userdetails({super.key});

  @override
  State<Userdetails> createState() => _UserdetailsState();
}

class _UserdetailsState extends State<Userdetails> {
  List<Map<String, dynamic>> myList = [];
  TextEditingController userName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("UserDetails"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: userName,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.supervised_user_circle,
                    color: Colors.blue,
                  ),
                  labelText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: mobileNumber,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  labelText: "Mobile number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                setState(() {
                  myList.add({
                    "username": userName.text,
                    "mobilenumber": mobileNumber.text
                  });
                });
              },
              child: Text("Update Details")),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.supervised_user_circle,
                          color: Colors.grey,
                        ),
                        Text(myList[index]["username"]),
                        Text(myList[index]["mobilenumber"]),
                        Icon(
                          Icons.call,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
