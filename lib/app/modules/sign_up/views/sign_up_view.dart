import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tes/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../widgets/widgets.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Sign Up.',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: [
                const ImageContent(),
                const SizedBox(height: 10),
                InputDaftar(
                  controller: controller.usernameC,
                  hint: 'username',
                  label: 'Username',
                ),
                const SizedBox(height: 10),
                InputDaftar(
                  controller: controller.emailC,
                  hint: 'example@gmail.com',
                  label: 'E-mail',
                ),
                const SizedBox(height: 10),
                InputDaftar(
                  controller: controller.passwordC,
                  isPassword: true,
                  hint: 'at least 8 characters',
                  label: 'Password',
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        controller.isChecked.value =
                            !controller.isChecked.value;
                      },
                      child: Row(
                        children: [
                          Obx(
                            () => Checkbox(
                              value: controller.isChecked.value,
                              onChanged: (value) {
                                controller.isChecked.value = value!;
                              },
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(text: 'i agree with '),
                                textSpanWithClick(
                                  'Terms',
                                  () {
                                    log('tes1');
                                  },
                                ),
                                const TextSpan(text: ' and '),
                                textSpanWithClick(
                                  'privacy',
                                  () {
                                    log('test2');
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Button(
                  name: 'Sign Up',
                  onPressed: () {},
                ),
                const SizedBox(height: 50),
                TextAccount(
                  account: 'im already have an account.',
                  textButton: 'Sign In',
                  onPressed: () => Get.toNamed(Routes.LOGIN),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextSpan textSpanWithClick(
    final String name,
    final void Function()? onPressed,
  ) {
    return TextSpan(
      text: name,
      recognizer: TapGestureRecognizer()..onTap = onPressed,
      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
    );
  }
}
