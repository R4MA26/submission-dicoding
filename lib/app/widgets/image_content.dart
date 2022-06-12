import 'package:flutter/material.dart';

class ImageContent extends StatelessWidget {
  const ImageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/pasted.png');
  }
}
