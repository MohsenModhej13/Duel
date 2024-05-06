import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TwoFactorLogin extends StatelessWidget {
  const TwoFactorLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: Assets.images.safe.image(
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 14.sp),
            MyText(
              title: ' گوش به زنگ باش !',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: ResponsiveLayout.isTablet(context) ? 19.sp : 18.sp,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(255, 169, 201, 247),
                      Color.fromARGB(255, 129, 180, 252),
                    ],
                  ).createShader(
                    const Rect.fromLTWH(50, 0, 400, 0),
                  ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.sp),
            MyText(
              title:
                  ' یک کد 6 رقمی برای شما پیامک کردیم \nکد را در قسمت پایین وارد کنید',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: 13.sp,
                fontWeight: FontWeight.w100,
                color: appTheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.sp),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  otpBoxView(context),
                  otpBoxView(context),
                  otpBoxView(context),
                  otpBoxView(context),
                  otpBoxView(context),
                  otpBoxView(context),
                ],
              ),
            ),
            SizedBox(height: 16.sp),
            MyText(
              title: '60 ثانیه تا ارسال دوباره کد تایید',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: 14.sp,
                color: appTheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                backgroundColor: const Color(0xff3F8DFD),
                fixedSize: Size(64.sp, 17.sp),
              ),
              child: MyText(
                title: 'تایید',
                style: TextStyle(
                  fontFamily: 'dana_demibold',
                  fontSize: 16.8.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget otpBoxView(BuildContext context) => Container(
      width: ResponsiveLayout.isTablet(context) ? 52.sp : 50.sp,
      height: ResponsiveLayout.isTablet(context) ? 52.sp : 50.sp,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
