import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var usernameC = TextEditingController();
  var emailC = TextEditingController();
  var passwordC = TextEditingController();

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
