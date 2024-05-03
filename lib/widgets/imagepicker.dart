import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ImagePicker _picker = ImagePicker();
  XFile? file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.grey.shade200,
              child: Center(
                  child: file == null
                      ? Text(
                          "Image not Picked",
                          style: TextStyle(color: Colors.black),
                        )
                      : Image.file(
                          File(file!.path),
                          fit: BoxFit.cover,
                        )),
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);

                  setState(() {
                    file = photo;
                  });
                },
                child: Text("Pick Image"))
          ],
        ),
      ),
    );
  }
}
