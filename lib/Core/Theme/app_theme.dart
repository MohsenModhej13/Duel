import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      background: Color(0xFFFFFEFE),
      onBackground: Color(0xffEDEDED),
      primary: Color(0xff1F1F1F),
      // Main Text Color,
      secondary: Color(0xff777777),
      // Sub Text Color
      tertiary: Color(0xffF0F0F0),
      // OTP Input
      surface: Color(0xffCDCDCD),
      // OTP Input Text Color
      inversePrimary: Color(0xffF2F2F2),
    ),
  );

  static ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      background: Color(0xff1B1A1D),
      // BG color,
      onBackground: Color(0xff4b4848),
      // Home BG AppBar like
      primary: Color(0xffF8F8F8),
      // Main Text Color,
      secondary: Color(0xffF2F2F2),
      // Sub Text Color
      tertiary: Color(0xff242232),
      // OTP Input BG
      surface: Color(0xff767676),
      // OTP Input Text Color
      inversePrimary: Color(0xff15141B),
    ),
  );
}
