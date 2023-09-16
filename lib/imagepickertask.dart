import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ImageUploadGallery.dart';
import 'Imageuploadcamera.dart';

class ImagePickerBoth extends StatefulWidget {
  const ImagePickerBoth({super.key});

  @override
  State<ImagePickerBoth> createState() => _ImagePickerBothState();
}

class _ImagePickerBothState extends State<ImagePickerBoth> {
  int selectedPage = 0;
  List pages = [ImageUploadCamera(), ImageUploadGallery()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Image Pickers",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: (value) {
            setState(() {
              selectedPage = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera,
                ),
                label: "Camera Upload"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.folder,
                ),
                label: "File Upload")
          ]),
      body: pages[selectedPage],
    );
  }
}
