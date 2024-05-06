import 'package:flutter/material.dart';

class MyElevateButton extends StatelessWidget {
  const MyElevateButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.style,
  });

  final VoidCallback onPressed;
  final ButtonStyle? style;
  final Widget child;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: child,
      );
}
