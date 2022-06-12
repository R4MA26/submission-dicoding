import 'package:flutter/material.dart';

class TextAccount extends StatelessWidget {
  const TextAccount({
    Key? key,
    required this.account,
    required this.textButton,
    this.onPressed,
  }) : super(key: key);

  final String account, textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(account),
        GestureDetector(
          onTap: onPressed,
          child: Text(textButton, style: const TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
