import 'package:duel/Config/Constant/constants.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Constants.theme(context).background,
      body: Center(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Constants.theme(context).brightness == Brightness.dark
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
                  color: Constants.theme(context).primary.withOpacity(0.6),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // SizedBox(height: 35.sp),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, RouteName.sendOtp);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  Constants.screenSize(context).width * 0.5.sp,
                  18.sp,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                backgroundColor: const Color(0xff3F8DFD),
              ),
              child: MyText(
                title: 'شروع کنید',
                style: TextStyle(
                  fontSize: 16.sp,
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
