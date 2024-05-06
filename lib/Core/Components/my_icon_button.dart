import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    required this.onPressed,
    required this.icon,
    super.key,
    this.style,
  });

  final VoidCallback onPressed;
  final Widget icon;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onPressed,
        style: style,
        icon: icon,
      );
}
