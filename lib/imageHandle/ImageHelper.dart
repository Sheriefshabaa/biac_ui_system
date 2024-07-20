import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';


class ImageHelper {
  final ImagePicker _imagePicker = ImagePicker();

  Future<XFile?> pickImageFromGallery() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    return image != null ? XFile(image.path) : null;
  }

  Future<XFile?> captureImageFromCamera() async {
    final image = await _imagePicker.pickImage(source: ImageSource.camera);
    return image != null ? XFile(image.path) : null;
  }
}

void main() {
  runApp(const ImageApp());
}

class ImageApp extends StatelessWidget {
  const ImageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImageHelper _imageHelper = ImageHelper();
  XFile? _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: _pickImageFromGallery,
            child: const Text('Select Image from Gallery'),
          ),
          ElevatedButton(
            onPressed: _captureImageFromCamera,
            child: const Text('Capture Image from Camera'),
          ),
        ],
      ),
    );
  }

  Future<void> _pickImageFromGallery() async {
    final image = await _imageHelper.pickImageFromGallery();
    setState(() {
      _pickedImage = image;
    });
  }

  Future<void> _captureImageFromCamera() async {
    final image = await _imageHelper.captureImageFromCamera();
    setState(() {
      _pickedImage = image;
    });
  }
}
