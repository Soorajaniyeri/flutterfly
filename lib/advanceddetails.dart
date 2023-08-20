import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvancedDetailes extends StatefulWidget {
  const AdvancedDetailes({super.key});

  @override
  State<AdvancedDetailes> createState() => _AdvancedDetailesState();
}

class _AdvancedDetailesState extends State<AdvancedDetailes> {
  GlobalKey<FormState> mykey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Details"),
      ),
      body: Form(
        key: mykey,
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),

            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter your name";
                }
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  //hintText: "name",
                  labelText: "First Name"),
            ),

            SizedBox(
              height: 10,
            ),

            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  //hintText: "name",
                  labelText: "Lastname"

              ),

              validator: (value){

                if(value!.isEmpty){

                  return "please enter second name";
                }
              },

            ),

            SizedBox(
              height: 10,
            ),

            TextFormField(
             // keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  //hintText: "name",
                  labelText: "number",


              ),
              validator: (value){

                if(value!.isEmpty){

                  return "Something wentwrong";

                }


                if(!(value.length==10)){

                  return "wrong";
                }

              },

            ),

            SizedBox(
              height: 10,
            ),

            // TextField(
            //   decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(10))
            //       ),
            //       //hintText: "name",
            //       labelText: "Email"
            //
            //   ),
            //
            // ),

            SizedBox(
              height: 10,
            ),

            ElevatedButton(onPressed: () {

              mykey.currentState!.validate();

            }, child: Text("click here"))
          ],
        ),
      ),
    );
  }
}
