// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// Future<dynamic> loginUser(String email, String password) async {
//   // Define the login endpoint URL
//   final String loginUrl = 'http://192.168.1.3:8080/auth/login/';
//   // Prepare the request body
//   final Map<String, String> requestBody = {
//     'email': email,
//     'password': password,
//   };

//   try {
//     // Make a POST request to the login endpoint
//     final response = await http.post(
//       Uri.parse(loginUrl),
//       body: jsonEncode(requestBody),
//       headers: {
//         'Content-Type': 'application/json',
//         // You may need to include additional headers as required by your backend
//       },
//     );
//     print(response.statusCode);
//     // Check if the request was successful (status code 200)
//     if (response.statusCode == 200) {
//       print("success");
//       return true;
//     } else {
//       return false;
//     }
//   } catch (e) {
//     // Catch any exceptions thrown during the request
//     // You can handle errors as needed, for example, return an error message
//     return {'error': 'Failed to login ${e.toString()}'};
//   }
// }

import 'dart:convert';
import 'package:biac/services/Api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// You can store the token in memory, but it will be lost if the app restarts.
// Consider using a more persistent storage solution for production apps.
String? token;

Future loginUser(String email, String password) async {
  final String loginUrl = Api().baseUrl + '/auth/login/';
  final Map<String, String> requestBody = {
    'email': email,
    'password': password,
  };

  try {
    final response = await http.post(
      Uri.parse(loginUrl),
      body: jsonEncode(requestBody),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      print("success");

      // Extract the token from the response body
      final responseBody = jsonDecode(response.body);
      token = responseBody['token']; // Replace 'token' with the actual key for the token in the response

      print('token is $token');
      print (token);
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return {'error': 'Failed to login ${e.toString()}'};
  }
}

// Future someOtherApiCall() async {
//   if (token == null) {
//     throw Exception('You must log in first');
//   }

//   final response = await http.get(
//     Uri.parse('http://192.168.1.3:8080/some/other/endpoint'),
//     headers: {
//       'Content-Type': 'application/json',
//       'Authorization': 'Bearer $token', // Include the token in your request headers
//     },
//   );

//   // Handle the response...
// }