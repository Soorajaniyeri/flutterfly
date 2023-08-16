import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tillnow extends StatefulWidget {
  const Tillnow({super.key});

  @override
  State<Tillnow> createState() => _TillnowState();
}

class _TillnowState extends State<Tillnow> {

  TextEditingController mytext = TextEditingController();
  String? myvalue = "Hello your Text here";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("TillNow"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
                child: Text(myvalue!,
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            )),
          ),


          SizedBox(
            height: 20,
          ),
          
          
          
          TextField(
            controller:mytext ,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add),
              suffixIcon: Icon(Icons.ac_unit),
              labelText: "hello im label text",
              helperText: "Iam helper text",
                  hintText: "hint",
              border:OutlineInputBorder(

                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey
                )
              )
              )
            ),


          ElevatedButton(onPressed: (){

setState(() {
  myvalue=mytext.text;
});
            // myvalue=mytext.text;
          //
          }, child: Text("Submit"),
          ),



          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(top: 20),
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              //image: DecorationImage(image: NetworkImage(url)),
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("iam a container inside padding widget",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),

                    Text("iam padded and margined using continer properties",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),

        ],
      ),
    );
  }
}
