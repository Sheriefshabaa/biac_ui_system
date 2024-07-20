import 'dart:io';
import 'dart:convert';
import 'package:biac/services/Api.dart';
import 'package:biac/services/getidtbsaservice.dart';
import 'package:biac/services/registrationtbsaservice.dart';
import 'package:http/http.dart' as http;
import 'package:biac/helper/api.dart';
import 'package:image_picker/image_picker.dart';

String lastid = "";

Future<List<Map<String, dynamic>>> captureburnservice(List<File> imageFiles) async {
  try {
    List<Map<String, dynamic>> uploadedImages = [];

    for (var imageFile in imageFiles) {
      var uri = Uri.parse(Api().baseUrl + '/tbsa/tbsa_burn_images/' + tbsaid.toString() + '/');
      var request = http.MultipartRequest('POST', uri)
        ..files.add(await http.MultipartFile.fromPath('images', imageFile.path));

      var response = await request.send();

      if (response.statusCode == 201) {
        print("dsadasdasdacs");
        var responseData = await response.stream.bytesToString();
        var decodedResponse = jsonDecode(responseData) as List;
        uploadedImages.addAll(decodedResponse.map((image) => image as Map<String, dynamic>));
        tbsa_ids['burn_last_image_id'] = uploadedImages.last['id'].toString();
        lastid = tbsa_ids['burn_last_image_id'].toString();
        print(tbsa_ids['burn_last_image_id']);
      } else {
        throw Exception('Failed to upload image');
      }
    }

    return uploadedImages;
  } catch (e) {
    print('Error uploading images: $e');
    throw Exception('Error uploading images: $e');
  }
}

