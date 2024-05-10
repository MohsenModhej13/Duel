import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreetingsText extends StatelessWidget {
  const GreetingsText({super.key});

  @override
  Widget build(BuildContext context) {
    const otpStatusText =
        'شماره تماستو بنویس \n برای اینکه وارد برنامه بشی بهش نیاز دارم';
    return MyText(
      title: otpStatusText,
      style: TextStyle(
        fontFamily: 'dana_medium',
        fontSize: 15.5.sp,
        height: 1.6.sp,
        foreground: Paint()
          ..shader = LinearGradient(
            colors: lightGradient,
          ).createShader(
            Constants.theme(context).brightness == Brightness.light
                ? const Rect.fromLTWH(0, 0, 400, 100)
                : const Rect.fromLTWH(0, 0, 400, 100),
          ),
      ),
      textAlign: TextAlign.center,
    );
  }
}

List<Color> get lightGradient => [
      const Color(0xFF9DC1FB).withOpacity(0.7),
      const Color(0xFF77ADF9),
    ];
