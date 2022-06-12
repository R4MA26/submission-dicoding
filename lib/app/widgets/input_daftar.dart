import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputDaftar extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hint;
  final String label;
  final bool isPassword;

  const InputDaftar({
    Key? key,
    required this.hint,
    required this.label,
    required this.controller,
    this.validator,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isVisible = isPassword.obs;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(224, 224, 224, 1),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(224, 224, 224, 1),
          ),
          child: Obx(
            () => TextFormField(
              controller: controller,
              validator: validator,
              obscureText: isVisible.value,
              decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none,
                suffixIcon: isPassword
                    ? IconButton(
                        icon: Icon(
                          isVisible.isTrue
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          isVisible.toggle();
                        },
                      )
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
