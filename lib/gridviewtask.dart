import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridviewTask extends StatefulWidget {
  const GridviewTask({super.key});

  @override
  State<GridviewTask> createState() => _GridviewTaskState();
}

class _GridviewTaskState extends State<GridviewTask> {
  TextEditingController myCtrl = TextEditingController();

  List<String> myList = [];
  GlobalKey<FormState> myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Gridview Containers"),
        ),
        body: Form(
          key: myKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: myCtrl,
                  decoration: InputDecoration(
                      labelText: "Type your name here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  validator: (myValue) {
                    if (myValue!.isEmpty) {
                      return "Please Enter a name";
                    }
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    bool status = myKey.currentState!.validate();

                    if (status == true) {
                      setState(() {
                        myList.add(myCtrl.text);
                      });
                    }
                  },
                  child: Text("Update")),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                      itemCount: myList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Container(
                          //height: 200,
                          // width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                              child: Text(
                            myList[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        );
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
