import 'dart:convert';
import 'package:biac/History.dart';
import 'package:biac/services/Api.dart';
import 'package:http/http.dart' as http;

Map<String, dynamic> firstaidData = {}; 

 Future<void> fetchfirstaid() async {
  final String url = Api().baseUrl + '/results/show_result/${userid}/';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON
      firstaidData = json.decode(response.body);
      print('firstaidData');
      print(firstaidData["firstAidsList"]);
    } else {
      print('fielddddd');
      // If the server returns an error response, throw an exception
      throw Exception('Failed to load user data');
    }
  } catch (error) {
    // Handle errors
    print('Error: $error');
  }
}
