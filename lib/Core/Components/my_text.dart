import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    required this.title,
    super.key,
    this.style,
    this.textAlign,
    this.textDirection,
  });

  final String title;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }
}
