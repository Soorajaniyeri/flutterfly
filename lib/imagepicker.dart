import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerExample extends StatefulWidget {
  const ImagePickerExample({super.key});

  @override
  State<ImagePickerExample> createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  File? selectedImage;

  pickImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? store = await imagePicker.pickImage(source: ImageSource.gallery);

    if (store != null) {
      setState(() {
        selectedImage = File(store.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  pickImage();
                },
                child: Text('Pick Image')),
          ),
          selectedImage == null
              ? Text('hello')
              : Image(image: FileImage(selectedImage!))
        ],
      ),
    );
  }
}
