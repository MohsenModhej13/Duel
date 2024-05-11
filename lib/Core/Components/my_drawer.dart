import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              child: ListTile(
                horizontalTitleGap: 2,
                leading: const Icon(Icons.person_2_rounded, size: 60),
                title: MyText(
                  title: 'امیر امیری',
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontFamily: 'dana_medium',
                    color: Constants.theme(context).primary,
                  ),
                ),
                subtitle: MyText(
                  title: 'یک تازه وارد',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: 'dana_regular',
                    color: Constants.theme(context).secondary,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: MyText(
                title: 'پروفایل',
                style: TextStyle(fontFamily: 'dana_light', fontSize: 15.sp),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.gamepad),
              title: MyText(
                title: 'چالش های من',
                style: TextStyle(fontFamily: 'dana_light', fontSize: 15.sp),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.flag),
              title: MyText(
                title: 'قوانین دویل',
                style: TextStyle(fontFamily: 'dana_light', fontSize: 15.sp),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: MyText(
                title: 'تنظیمات',
                style: TextStyle(fontFamily: 'dana_light', fontSize: 15.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
