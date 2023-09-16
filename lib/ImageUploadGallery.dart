import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadGallery extends StatefulWidget {
  const ImageUploadGallery({super.key});

  @override
  State<ImageUploadGallery> createState() => _ImageUploadGalleryState();
}

class _ImageUploadGalleryState extends State<ImageUploadGallery> {
  File? selectedImage;

  uploadFile() async {
    ImagePicker pickFile = ImagePicker();
    XFile? store = await pickFile.pickImage(source: ImageSource.gallery);

    if (store != null) {
      setState(() {
        selectedImage = File(store.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  uploadFile();
                },
                child: Text('Upload File Image')),
            SizedBox(
              height: 30,
            ),
            selectedImage == null
                ? Text("Please Upload Image",
                    style: TextStyle(color: Colors.grey))
                : Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Image(height: 150, image: FileImage(selectedImage!)),
                  ),



          ],
        ),
      ),
    );
  }
}
