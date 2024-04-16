import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final String baseUrl =
      "http://medfren.us-east-1.elasticbeanstalk.com/api/v1/auth";

  void loginApi() async {
    try {
      final response = await post(Uri.parse('$baseUrl/doctor/register'),
          // 'https://reqres.in/api/login'),
          body: {
            // 'email': emailController.value.tostring(),
            // 'password': passwordController.value.text

            "email": "eve.holt@reqres.in",
            "password": "cityslicka"
          });

      var data = jsonDecode(response.body);
      print("Response Data !!!");
      print({
        'email': emailController.value.toString(),
        'password': passwordController.value.text
      });
      // print(passwordController.value.text);
      print("Status Code : ");
      print(response.statusCode);

      print("Request data: ");
      print(data);
    } catch (err) {
      print(err);
    }
  }
}
