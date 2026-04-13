import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  File? image;
  final picker = ImagePicker();

  Future pickFromCamera() async {
    final picked = await picker.pickImage(source: ImageSource.camera);
    if (picked != null) {
      setState(() {
        image = File(picked.path);
      });
    }
  }

  Future pickFromGallery() async {
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        image = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Camera & Gallery")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image != null
                ? Image.file(image!, height: 200)
                : Text("No Image Selected"),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: pickFromCamera,
              child: Text("Open Camera"),
            ),

            ElevatedButton(
              onPressed: pickFromGallery,
              child: Text("Open Gallery"),
            ),
          ],
        ),
      ),
    );
  }
}

dependencies:
  flutter:
    sdk: flutter
  image_picker: ^1.0.0