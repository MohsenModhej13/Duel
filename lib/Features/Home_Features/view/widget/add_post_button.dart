import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:flutter/material.dart';

Widget addPostButton(BuildContext context) {
  return FloatingActionButton(
    shape: const CircleBorder(),
    onPressed: () {},
    child: Container(
      width: ResponsiveLayout.isTablet(context) ? 65 : 60,
      height: ResponsiveLayout.isTablet(context) ? 65 : 60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color(0xff0F4696),
            Color(0xff3F8DFD),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: const Icon(Icons.add),
    ),
  );
}
