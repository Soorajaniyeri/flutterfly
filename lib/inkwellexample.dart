import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkwellExample extends StatefulWidget {
  const InkwellExample({super.key});

  @override
  State<InkwellExample> createState() => _InkwellExampleState();
}

class _InkwellExampleState extends State<InkwellExample> {

  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Inkwell Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {

                setState(() {
                  counter = counter+1;
                });


              },
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  "Clik Here",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),

          ),

          SizedBox(
            height: 40,
          ),

          Text(counter.toString())
        ],
      ),
    );
  }
}
