import 'package:flutter/material.dart';
import 'package:flutter_tes/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../../../widgets/widgets.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

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
                  'Log in.',
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
                  controller: controller.passwordC,
                  hint: 'at least 8 characters',
                  label: 'Password',
                  isPassword: true,
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
                          const Text('remember me'),
                        ],
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Button(
                  name: 'Login',
                  onPressed: () {
                    controller.login(controller.usernameC.text.toString(),
                        controller.passwordC.text.toString());
                  },
                ),
                const SizedBox(height: 50),
                TextAccount(
                  account: "Don't have account?.",
                  textButton: 'sign Up',
                  onPressed: () => Get.toNamed(Routes.SIGN_UP),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
