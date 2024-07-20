import 'dart:io';

import 'package:biac/helper/api.dart';
import 'package:biac/models/burnimage.dart';
import 'package:biac/services/Api.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

String degreeimage= '';
Future<Map<String, dynamic>> uploadImage(File imageFile) async {
  var uri = Uri.parse(Api().baseUrl + '/classification/upload_image/');
  var request = http.MultipartRequest('POST', uri)
    ..files.add(await http.MultipartFile.fromPath('provided_image', imageFile.path));

  var response = await request.send();
  if (response.statusCode == 200) {
    var responseData = await http.Response.fromStream(response);
    
     degreeimage = jsonDecode(responseData.body)['processed_image_data']['burn_degree'];
      print(degreeimage);

    return jsonDecode(responseData.body);
  } else {
    throw Exception('Failed to upload image');
  }
}