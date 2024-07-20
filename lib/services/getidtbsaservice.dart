// import 'dart:convert';
// import 'package:biac/services/Api.dart';
// import 'package:http/http.dart' as http;

Map<String, dynamic> tbsa_ids = {
  'tbsa_id': 0,
  'hand_id': 0,
  'burn_last_image_id': 0,
};
 

//  Future<void> getidtbsa() async {
//   final String url = Api().baseUrl + '/tbsa/tbsa_basic_info/';

//   try {
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       // If the server returns a 200 OK response, parse the JSON
//       tbsaData = json.decode(response.body);
//       print(tbsaData);
      
//     } else {
//       print('dohaelsawiiiiii');
//       // If the server returns an error response, throw an exception
//       throw Exception('Failed to load user data');
//     }
//   } catch (error) {
//     // Handle errors
//     print('Error: $error');
//   }
// }
