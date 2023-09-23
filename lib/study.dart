import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Study2.dart';

class Study extends StatefulWidget {
  const Study({super.key});

  @override
  State<Study> createState() => _StudyState();
}

class _StudyState extends State<Study> {
  File? selectedImage;
  String? myImage;

  uploadImage() async {
    ImagePicker select = ImagePicker();
    XFile? store = await select.pickImage(source: ImageSource.gallery);
    if (store != null) {
print('uploaded url path');
      print(store.path);
      setState(() {
        myImage = store.path;
        selectedImage = File(store.path);

      });
    }
  }

  storeData()async{
    SharedPreferences dp = await SharedPreferences.getInstance();
  await dp.setString("dp", myImage!);

  Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return Study2();
  }));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Study"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  uploadImage();
                },
                child: Text("Select Image")),
            SizedBox(
              height: 10,
            ),
            selectedImage == null
                ? SizedBox()
                : Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: FileImage(selectedImage!)),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
            SizedBox(
              height: 10,
            ),
            selectedImage == null
                ? SizedBox()
                : ElevatedButton(onPressed: () {

                  storeData();
            }, child: Text("Submit")),


          ],
        ),
      ),
    );
  }
}
