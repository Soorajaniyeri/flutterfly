import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadCamera extends StatefulWidget {
  const ImageUploadCamera({super.key});

  @override
  State<ImageUploadCamera> createState() => _ImageUploadCameraState();
}

class _ImageUploadCameraState extends State<ImageUploadCamera> {
  File? selectedImage;

  uploadCam() async {
    ImagePicker pickCamImage = ImagePicker();

    XFile? store = await pickCamImage.pickImage(source: ImageSource.camera);

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
                  uploadCam();
                },
                child: Text("Upload Camera Image")),
            SizedBox(
              height: 30,
            ),
            selectedImage == null
                ? Text(
                    'Please Upload Image',
                    style: TextStyle(color: Colors.grey),
                  )
                : Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Image(height: 150, image: FileImage(selectedImage!)),
                  )
          ],
        ),
      ),
    );
  }
}
