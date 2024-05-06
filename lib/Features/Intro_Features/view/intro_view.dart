import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/Route/route_name.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: theme.colorScheme.background,
      body: Center(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 0.135.dp / 0.135.dp,
              child: theme.brightness == Brightness.dark
                  ? Assets.images.avatarsDark.image()
                  : Assets.images.avatarsLight.image(),
            ),
            SizedBox(height: 8.sp),
            MyText(
              title: 'به برنامه Duel خوش امدید',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: 18.sp,
              ),
            ),
            SizedBox(height: 10.sp),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveLayout.isTablet(context) ? 14 : 12,
              ),
              child: MyText(
                title:
                    '  دويل یک رسانه اجتماعیه که میتونی در اینجا با فعالیت مداوم علاوه بر اینکه برای خودت یه عالمه دوست و دنبال کننده پیدا کنی,با طراحی معما و شرکت در چالش ها هم برای خودت کسب درآمد کنی',
                style: TextStyle(
                  fontFamily: 'dana_regular',
                  fontSize: 15.sp,
                  color: theme.colorScheme.primary.withOpacity(0.6),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // SizedBox(height: 35.sp),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacementNamed(context, RouteName.otp);
                Navigator.pushReplacementNamed(context, RouteName.navbar);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  Adaptive.w(0.66.dp),
                  Adaptive.h(0.176.dp), //  -> 10% of screen
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                backgroundColor: const Color(0xff3F8DFD),
              ),
              child: MyText(
                title: 'شروع کنید',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontFamily: 'dana_demibold',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20.sp),
          ],
        ),
      ),
    );
  }
}
