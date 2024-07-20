import 'dart:convert';
import 'package:http/http.dart' as http;

  class Api {
    String baseUrl = 'http://192.168.1.35:8080';
    static late String _token;
    static void setToken(String token) {
      _token = token;
    }

    static String get token => _token;

    Future<dynamic> get({required String url, dynamic body}) async {
      Map<String, String> headers = {};

      if (token != null) {
        headers.addAll({'token': token});
        print(token);
      }

      http.Response response =
      await http.get(Uri.parse(baseUrl + url), headers: headers,);
      print((baseUrl + url));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(
            'There is a problem with status code ${response.statusCode}');
      }
    }

    Future<dynamic> post({required String url, dynamic body}) async {
      Map<String, String> headers = {};
      if (token != null) {
        headers.addAll({'token': token});
        print(token);
      }
      http.Response response = await http.post(
        Uri.parse(baseUrl + url),
        headers: headers,
        body: body,
      );

      // Check if the response status code is 200 or 201
      if (response.statusCode == 200 || response.statusCode == 201) {
        dynamic data = jsonDecode(response.body);
        return data;
      } else {
        // If the status code is not 200 or 201, throw an exception with the error message
        throw Exception('Failed to post data: ${response.statusCode}');
      }
    }

    Future<dynamic> put(
        {required String url, dynamic body}) async {
      Map<String, String> headers = {};

      if (token != null) {
        headers.addAll({'token': token});
      }

      if (body is Map<String, dynamic>) {
        // Handle Map<String, dynamic> body
        http.Response response = await http.put(
          Uri.parse(baseUrl + url),
          headers: headers,
          body: body,
        );

        if (response.statusCode == 200) {
          return; // Since there's no response, return null
        } else {
          throw Exception(
              'There is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
        }
      } else if (body is Map<String, String>) {
        // Handle Map<String, String> body
        http.Response response = await http.put(
          Uri.parse(baseUrl + url),
          headers: headers,
          body: body,
        );

        if (response.statusCode == 200) {
          return; // Since there's no response, return null
        } else {
          throw Exception(
              'There is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
        }
      } else {
        throw Exception('Invalid body type');
      }
    }

    Future<dynamic> delete({required String url}) async {
      Map<String, String> headers = {};

      if (token != null) {
        headers.addAll({'token': token});
      }

      http.Response response =
      await http.delete(Uri.parse(baseUrl + url), headers: headers);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return data;
      } else {
        throw Exception('Failed to delete data: ${response.statusCode}');
      }
      if (response.statusCode != 204) {
        throw Exception(
            'Failed to delete resource with status code ${response.statusCode}');
      }
    }
  }