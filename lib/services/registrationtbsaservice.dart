import 'dart:convert';
import 'package:biac/services/Api.dart';
import 'package:biac/services/getidtbsaservice.dart';
import 'package:http/http.dart' as http;


int tbsaid = tbsa_ids['tbsa_id'];

Future<dynamic> registertbsa(String name, 
String gender, 
String inhalation,
int age, 
int weight
) async {
  // Define the registration endpoint URL
  final String registertbsaUri = Api().baseUrl + '/tbsa/tbsa_basic_info/';
  
  // Prepare the request body
  final Map<String, dynamic> requestBody = {
    'patient_name': name,
    if (gender == 'Male')'age_type': "M" else 'age_type' : "F",
    'age': age,
    if (inhalation == "true")'is_inhalation': true else 'is_inhalation' : false,
    'weight': weight,
  };

  try {
    // Make a POST request to the registration endpoint
    final response = await http.post(
      Uri.parse(registertbsaUri),
      body: jsonEncode(requestBody),
      headers: {
        'Content-Type': 'application/json',
        // You may need to include additional headers as required by your backend
      },
    );

    // Check if the request was successful (status code 200)
    if (response.statusCode == 201) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      tbsa_ids['tbsa_id'] = responseBody['id'];
      print(tbsa_ids['tbsa_id']);
      // Return a message to check the email for verification
      return true;
    } else {
      // If the server did not return a 200 OK response, throw an exception.
      return false;
    }
  } catch (e) {
    // If an error occurred, throw an exception
    print("object");
    print('Failed to update profile: ${e.toString()}');
    return false;
  }
}

