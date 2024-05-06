import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Core/Components/my_elevate_button.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String postSubText =
    'چه کسی عاشق معما و بازی‌های فکری چالش برانگیز نیست؟ معماها به ما کمک می‌کنند بیشتر راجع به مسائل مختلف فکر کنم و فکر خودمان را به چالش بکشیم. اغلب معماها از تکنیک‌هایی استفاده می‌کنند که ذهن ...';

Widget postSection(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        postBannerStatus(context),
        SizedBox(height: 8.sp),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.sp),
              child: Image.asset(
                'assets/Images/rect.png',
                fit: BoxFit.cover,
                width: Constants.screenSize(context).width * 0.92.sp,
                height: Constants.screenSize(context).height * 0.41.sp,
              ),
            ),
            Positioned(
              right: 10,
              top: Constants.screenSize(context).height * 0.01,
              child: Container(
                decoration: ShapeDecoration(
                  color: Constants.theme(context).surface.withOpacity(0.7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(20.sp),
                      topEnd: Radius.circular(20.sp),
                      topStart: Radius.circular(20.sp),
                    ),
                  ),
                ),
                padding: EdgeInsets.all(8.sp),
                child: MyText(
                  title: 'کوچولووووووووو جر نزن',
                  style: TextStyle(
                    fontSize: 9.sp,
                    fontFamily: 'dana_regular',
                    color: Constants.theme(context).primary,
                  ),
                ),
              ),
            ),
            Positioned(
              right: Constants.screenSize(context).width * 0.1,
              left: Constants.screenSize(context).width * 0.1,
              bottom: 0,
              child: MyElevateButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    0,
                    20.sp,
                  ),
                ),
                onPressed: () {},
                child: MyText(
                  title: 'انجام چالش',
                  style: TextStyle(fontFamily: 'dana_medium', fontSize: 12.sp),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget postBannerStatus(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: ListTile(
            horizontalTitleGap: 3.sp,
            leading: Image.asset('assets/Icons/hani_prof.png'),
            title: MyText(
              title: 'هانیه کرباسچی',
              style: TextStyle(
                  fontFamily: 'dana_bold',
                  fontSize: ResponsiveLayout.isTablet(context) ? 13.sp : 12.sp,
                  color: Constants.theme(context).primary),
            ),
            subtitle: MyText(
              title: '10 دقیقه قبل',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: ResponsiveLayout.isTablet(context) ? 10.sp : 9.sp,
                color: Constants.theme(context).secondary,
              ),
            ),
          ),
        ),
        MyElevateButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Constants.theme(context).brightness == Brightness.light
                    ? Colors.grey[300]
                    : Colors.grey[800],
            fixedSize: Size(
              Constants.screenSize(context).width * 0.3,
              Constants.screenSize(context).height * 0.04,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp),
              side: BorderSide(
                color: Constants.theme(context).secondary,
                width: 1,
              ),
            ),
          ),
          child: MyText(
            title: 'دنبال کردن',
            style: TextStyle(
              fontSize: 12.sp,
              color: Constants.theme(context).primary,
              fontFamily: 'dana_demibold',
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}
