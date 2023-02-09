import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void signupApi() async {
    try {
      final response =
          await post(Uri.parse("https://reqres.in/api/login"), 
          
          body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      });
      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        print(response.statusCode);
        print(data);
        Get.snackbar('Login sexfull', "");
      } else {
        Get.snackbar('exception', "Login failed due to error");
      }
    } catch (e) {
      Get.snackbar('exception', e.toString());
    }
  }
}
