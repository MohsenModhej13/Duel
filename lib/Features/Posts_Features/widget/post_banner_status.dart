import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Core/Components/my_elevate_button.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                    ? const Color(0xFF669EF3)
                    : Colors.grey[800],
            fixedSize: Size(
              Constants.screenSize(context).width * 0.3,
              Constants.screenSize(context).height * 0.033,
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
              color: Colors.white,
              fontFamily: 'dana_medium',
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
  );
}
