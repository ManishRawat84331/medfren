import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginService {
  static const String _baseUrl =
      'http://192.168.245.163:80'; // Replace with your server address

  static Future<Map<String, dynamic>> login(
      String email, String password) async {
    final url = Uri.parse('$_baseUrl/login');
    final body = jsonEncode({'email': email, 'password': password});

    try {
      final response = await http
          .post(url, body: body, headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 200) {
        // Successful login, return response data
        return jsonDecode(response.body);
      } else {
        // Login failed, throw an exception with the error message
        throw Exception('Failed to login: ${response.reasonPhrase}');
      }
    } catch (e) {
      // Request failed, throw an exception with the error message
      throw Exception('Failed to connect to server: $e');
    }
  }
}
