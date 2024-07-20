import 'dart:convert';
import 'package:biac/History.dart';
import 'package:biac/services/Api.dart';
import 'package:http/http.dart' as http;

 List<dynamic> userData = [];
 

 Future<void> fetchUsearData() async {
  final String url = Api().baseUrl + '/auth/user_history/4/';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      // If the server returns a 200 OK response, parse the JSON
      userData = json.decode(response.body);
      print('dohaelsawiiiiii');
      print("uri");
      print(url);
      print("userdata ");
      print(userData);
      print(userData[0]['classified_images'][0]['burn_degree']);
     

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
