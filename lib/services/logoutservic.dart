import 'package:biac/services/Api.dart';
import 'package:http/http.dart' as http;

// String token required for logout
Future<bool> logout() async {
  final String logoutUrl = Api().baseUrl + '/auth/logout/';

  try {
    final response = await http.post(
      Uri.parse(logoutUrl),
      headers: {
        'Content-Type': 'application/json',
        // 'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      print('Logged out successfully');
      return true;
    } else {
      print('Failed to log out');
      return false;
    }
  } catch (e) {
    print('Failed to log out: ${e.toString()}');
    return false;
  }
}