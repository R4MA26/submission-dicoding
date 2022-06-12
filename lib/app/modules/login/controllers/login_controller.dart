import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  var usernameC = TextEditingController(text: 'eve.holt@reqres.in');
  var passwordC = TextEditingController(text: 'cityslicka');

  void login(String usernameC, passwordC) async {
    try {
      http.Response response =
          await http.post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': usernameC,
        'password': passwordC,
      });

      if (response.statusCode == 200) {
        Get.offAllNamed(Routes.HOME);
        print(response.body);
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  final isChecked = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
