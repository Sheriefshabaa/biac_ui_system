import 'dart:convert';
import 'package:http/http.dart' as http;

class burnImage{
  String image;
  burnImage({required this.image});

  factory burnImage.fromJson(jsonData){
    return burnImage(
      image: jsonData['provided_image'],
    );
  }
}


// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:path/path.dart' as path;
// import 'package:mime/mime.dart';

// class ImageUploader {
//   final String uploadUrl = 'http://127.0.0.1:8000/classification/upload_image/';

//   Future<void> uploadImage(File imageFile) async {
//     try {
//       final mimeType = lookupMimeType(imageFile.path);
      
//       var request = http.MultipartRequest('POST', Uri.parse(uploadUrl))
//         ..files.add(await http.MultipartFile.fromPath(
//           'provided_image',
//           imageFile.path,
//           contentType: MediaType.parse(mimeType!),
//         ));
     
//       var response = await request.send();

//       if (response.statusCode == 200) {
//         print('Image uploaded successfully');
//       } else {
//         print('Image upload failed: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error uploading image: $e');
//     }
//   }
// }
