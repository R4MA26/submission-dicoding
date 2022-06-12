import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.onPressed,
    required this.name,
  }) : super(key: key);

  final void Function()? onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
