import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = '';

  // Helper method to make get request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final res = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(res);
  }

  static Future<Map<String, dynamic>> post(
    String endpoint,
    dynamic data,
  ) async {
    final res = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(res);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to load data: ${response.statusCode}");
    }
  }
}
