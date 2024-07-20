import 'dart:convert';
import 'package:http/http.dart' as http;
class api
{
  Future<http.Response> get({
    required String url,
  }) async
  {
    http.Response response = await http.get(Uri.parse(url));
  
    if(response.statusCode == 200)
    {
      return response;
    }
    else
    {
      throw Exception('Failed to load data code is ${response.statusCode}');
    }
  
  }

  Future<dynamic> post({
    required String url,
    required dynamic body,
    required String? token,
  }) async
  {
    Map<String, String> headers = {};

    if(token != null)
    {
      headers.addAll({
        'Authorization': 'Bearer  $token',});
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    if(response.statusCode == 200)
    {
      Map<String,dynamic> data = jsonDecode(response.body);
      return data;
    }
    else
    {
      throw Exception('Failed to load data code is ${response.statusCode}');
    } 
  }

  Future<dynamic> put({
    required String url,
    required dynamic body,
    required String? token,
  }) async
  {
    Map<String, String> headers = {};

    headers.addAll({
      'Content-Type': 'application/json',
    });

    if(token != null)
    {
      headers.addAll({
        'Authorization': 'Bearer  $token',});
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    Map<String,dynamic> data = jsonDecode(response.body);
    return data; 
  }
}