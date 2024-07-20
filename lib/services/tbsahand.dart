import 'dart:io';
import 'package:biac/helper/api.dart';
import 'package:biac/models/burnimage.dart';
import 'package:biac/services/Api.dart';
import 'package:biac/services/getidtbsaservice.dart';
import 'package:biac/services/registrationtbsaservice.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> TbsaHandImage(File imageFile) async {
  try {
    var uri = Uri.parse(Api().baseUrl + '/tbsa/tbsa_hand_image/' + tbsaid.toString() + '/');
    var request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath('image', imageFile.path));

    var response = await request.send();

    if (response.statusCode == 201) {
      var responseData = await http.Response.fromStream(response);
      tbsa_ids['hand_id'] = jsonDecode(responseData.body)['id'];
      return jsonDecode(responseData.body);
    } else {
      throw Exception('Failed to upload image');
    }
  } catch (e) {
    print('Error uploading image: $e');
    throw Exception('Error uploading image: $e');
  }
}
