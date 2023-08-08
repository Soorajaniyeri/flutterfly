import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfielddecoration extends StatefulWidget {
  const Textfielddecoration({super.key});

  @override
  State<Textfielddecoration> createState() => _TextfielddecorationState();
}

class _TextfielddecorationState extends State<Textfielddecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Textfield Decoration"),
        centerTitle: true,
      ),
      body: Center(
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          //obscureText: true,
          decoration: InputDecoration(
           labelText: "mail",
           // hintText: "mail",
            prefixIcon: Icon(Icons.mail,color: Colors.green,),
            suffixIcon: Icon(Icons.visibility,color: Colors.green,),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))
              
            )
          ),

        ),
      ),
    );
  }
}
