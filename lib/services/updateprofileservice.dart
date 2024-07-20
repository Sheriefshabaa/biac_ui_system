import 'dart:convert';
import 'package:biac/services/Api.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';



Future<bool> updateProfile(
  // required String token,
  String firstName,
  String lastName,
  String email,
  String gender,
  String phoneNumber,
  DateTime dateOfBirth,
) async {
  final String updateProfileUrl = Api().baseUrl + '/auth/update_profile/11/';

  final Map<String, dynamic> requestBody = {
    'first_name': firstName,
    'last_name': lastName,
    'email': email,
    if (gender == 'Male')'gender': "M" else 'gender' : "F"
    ,
    'phone_number': phoneNumber,
    'date_of_birth': DateFormat('yyyy-MM-dd').format(dateOfBirth), // Format dateOfBirth to ISO8601 string
    };

  try {
    final response = await http.put(
      Uri.parse(updateProfileUrl),
      body: jsonEncode(requestBody),
      headers: {
        'Content-Type': 'application/json',
        
      },
    );

    if (response.statusCode == 200) {
      print('Profile updated successfully');
      print(gender);
      return true;
    } else {
      print(firstName) ;
      print(lastName);
      print(dateOfBirth);
      print(dateOfBirth);
      print(gender);
      print('Failed to update profile');
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      return false;
    }
  } catch (e) {
    print('Failed to update profile: ${e.toString()}');
    return false;
  }
}
