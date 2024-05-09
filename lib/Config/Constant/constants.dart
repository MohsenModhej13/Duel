import 'package:flutter/material.dart';

class Constants {
  static Size screenSize(BuildContext context) => MediaQuery.sizeOf(context);

  static ColorScheme theme(BuildContext context) =>
      Theme.of(context).colorScheme;
}

typedef Mapper = Map<String, dynamic>;
