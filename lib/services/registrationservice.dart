import 'dart:convert';
import 'package:biac/services/Api.dart';
import 'package:http/http.dart' as http;


Future<dynamic> registerUser(String username, String firstName, String lastName, String email,
    String password, String confirmPassword) async {
  // Define the registration endpoint URL
  final String registerUrl = Api().baseUrl + '/auth/registration/';
  
  // Prepare the request body
  final Map<String, String> requestBody = {
    'Username':username,
    'first_name': firstName,
    'last_name': lastName,
    'email': email,
    'password1': password,
    'password2': confirmPassword,
  };

  try {
    // Make a POST request to the registration endpoint
    final response = await http.post(
      Uri.parse(registerUrl),
      body: jsonEncode(requestBody),
      headers: {
        'Content-Type': 'application/json',
        // You may need to include additional headers as required by your backend
      },
    );

    // Check if the request was successful (status code 200)
    if (response.statusCode == 201) {
      // Return a message to check the email for verification
      return true;
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      return false;
    }
  } catch (e) {
    // If an error occurred, throw an exception
   print('Failed to update profile: ${e.toString()}');
    return false;
  }
}