import 'dart:convert';
import 'package:biac/History.dart';
import 'package:biac/services/Api.dart';
import 'package:biac/services/capturburnservice.dart';
import 'package:biac/services/getidtbsaservice.dart';
import 'package:http/http.dart' as http;

 Map<String,dynamic> tbsaData = {};
 

 Future<void> gettbsadata() async {
  final String url = Api().baseUrl + '/tbsa/tbsa_model/' + tbsa_ids['tbsa_id'].toString() + '/' + tbsa_ids['hand_id'].toString() + '/' + lastid + '/';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print("the end of endpoints");
      // If the server returns a 200 OK response, parse the JSON
      tbsaData = json.decode(response.body);

      print(tbsaData);
      } else {
      print('dohaelsawiiiiii');
      // If the server returns an error response, throw an exception
      throw Exception('Failed to load user data');
    }
  } catch (error) {
    // Handle errors
    print('Error: $error');
  }
}
