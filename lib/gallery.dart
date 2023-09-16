import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfly/study.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GalleryExample extends StatefulWidget {
  const GalleryExample({super.key});

  @override
  State<GalleryExample> createState() => _GalleryExampleState();
}

class _GalleryExampleState extends State<GalleryExample> {
  List items = [];

  File? selectedImage;

  showUpload() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Add Photo",
              style: TextStyle(fontSize: 20),
            ),
            content: Text("please choose"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    openCamera();
                    Navigator.pop(context);
                  },
                  child: Text("Camera")),
              ElevatedButton(
                  onPressed: () {
                    openGallery();
                    Navigator.pop(context);
                  },
                  child: Text("Gallery"))
            ],
          );
        });
  }

  openGallery() async {
    ImagePicker image = ImagePicker();
    XFile? store = await image.pickImage(source: ImageSource.gallery);

    if (store != null) {
      setState(() {
        selectedImage = File(store.path);
        items.add(selectedImage);

        Fluttertoast.showToast(
            msg: "New Image Added",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
      });
    }
  }

  openCamera() async {
    ImagePicker image = ImagePicker();
    XFile? store = await image.pickImage(source: ImageSource.camera);

    if (store != null) {
      setState(() {
        selectedImage = File(store.path);
        items.add(selectedImage);

        Fluttertoast.showToast(
            msg: "New Image Added",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                if (items.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Nothing to Clear",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else {
                  await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Confirmation"),
                          content: Text(
                              "are you sure want to delete all the photos in gallery"),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    items.clear();
                                    Fluttertoast.showToast(
                                        msg: "Gallery Cleared",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  });
                                },
                                child: Text("Clear now")),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Not now"))
                          ],
                        );
                      });
                }
              },
              child: Icon(
                Icons.delete,
                color: Colors.red,
              )),
          SizedBox(
            width: 20,
          ),
        ],
        backgroundColor: Colors.white,
        title: Text(
          "Gallery",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(5),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            // print(items.length);
            // print(index);
            if (index == items.length) {
              print("if happens");
              print(index);
              print(items.length);

              return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  showUpload();
                },
                child: Container(
                  height: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Icon(
                    Icons.cloud_upload,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
              );
            } else {
              print("else happens");
              return Stack(children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      //border: Border.all(color: Colors.black),

                      image: DecorationImage(
                          fit: BoxFit.cover, image: FileImage(items[index]))),
                ),
                Positioned(
                    right: 10,
                    bottom: 0,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                items.removeAt(index);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              color: Colors.grey,
                            ))))
              ]);
              //child: Image(image: FileImage(items[index])));
            }
          }),
    );
  }
}
