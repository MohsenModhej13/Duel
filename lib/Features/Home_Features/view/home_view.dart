import 'package:duel/Core/Components/my_elevate_button.dart';
import 'package:duel/Core/Components/my_icon_button.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Home_Features/model/story_people_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.brightness == Brightness.light
          ? theme.surface
          : theme.background,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.sp),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(14.sp),
                  bottomLeft: Radius.circular(14.sp),
                ),
              ),
              color: theme.background,
            ),
            width: MediaQuery.sizeOf(context).width,
            height: ResponsiveLayout.isTablet(context) ? 25.sp : 22.sp,
            child: storySection(context, theme),
          ),
          SizedBox(height: ResponsiveLayout.isTablet(context) ? 7.sp : 4.sp),
          _postSection(context, theme),
        ],
      ),
    );
  }

  Widget storySection(BuildContext context, ColorScheme theme) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(
              ResponsiveLayout.isTablet(context) ? 25.sp : 24.sp,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  title: 'Duel',
                  style: TextStyle(
                    fontFamily: 'dana_bold',
                    fontSize:
                        ResponsiveLayout.isTablet(context) ? 20.sp : 19.sp,
                  ),
                ),
                Wrap(
                  children: [
                    Icon(Icons.wallet_outlined, color: theme.primary, size: 27),
                    const SizedBox(width: 6),
                    Icon(
                      Icons.notifications_outlined,
                      color: theme.primary,
                      size: 27,
                    ),
                    const SizedBox(width: 6),
                    Assets.icons.messages.image(color: theme.primary),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: ResponsiveLayout.isTablet(context) ? 12.sp : 8.sp),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storyPeopleList.length,
              itemBuilder: (context, index) {
                final storyPerson = storyPeopleList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          storyPerson['image'].toString(),
                          fit: BoxFit.contain,
                          width: 55,
                        ),
                      ),
                      MyText(
                        title: storyPerson['name'].toString(),
                        style: TextStyle(
                          fontFamily: 'dana_light',
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      );
}

Widget _postSection(BuildContext context, ColorScheme theme) {
  const postSubText =
      'چه کسی عاشق معما و بازی‌های فکری چالش برانگیز نیست؟ معماها به ما کمک می‌کنند بیشتر راجع به مسائل مختلف فکر کنم و فکر خودمان را به چالش بکشیم. اغلب معماها از تکنیک‌هایی استفاده می‌کنند که ذهن ...';
  return Container(
    // margin: const EdgeInsets.symmetric(horizontal: 10),
    width: ResponsiveLayout.isTablet(context) ? 34.w : 66.sp,
    height: ResponsiveLayout.isTablet(context) ? 34.h : 55.sp,
    decoration: ShapeDecoration(
      color: theme.onBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.sp),
      ),
    ),
    child: Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ListTile(
                horizontalTitleGap: 3,
                leading: Image.asset('assets/Icons/hani_prof.png'),
                title: MyText(
                  title: 'هانیه کرباسچی',
                  style: TextStyle(
                    fontFamily: 'dana_medium',
                    fontSize: 14.sp,
                    color: theme.primary,
                  ),
                ),
                subtitle: MyText(
                  title: '10 دقیقه قبل',
                  style: TextStyle(
                    fontFamily: 'dana_light',
                    fontSize: 13.sp,
                    color: theme.secondary,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: MyIconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz_outlined,
                  color: theme.primary,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 14.sp,
          left: 14.sp,
          bottom: 47.sp,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.sp),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13.sp),
              child: Image.asset('assets/Images/rect.png',
                  fit: BoxFit.cover,
                  width: ResponsiveLayout.isTablet(context) ? 70.sp : 67.sp,
                  height: ResponsiveLayout.isTablet(context) ? 45.sp : 43.sp),
            ),
          ),
        ),
        Positioned(
          right: 20.sp,
          top: 23.sp,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.sp),
              ),
              color: theme.surface.withOpacity(0.7),
            ),
            child: MyText(
              title: 'کوچولووووووووو جر نزن',
              style: TextStyle(
                fontFamily: 'dana_light',
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 24.sp,
          right: 38.sp,
          left: 38.sp,
          child: MyElevateButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.sp),
                side: BorderSide(
                  color: theme.background,
                  width: 2,
                ),
              ),
              backgroundColor: const Color(0xff569afb),
              fixedSize: Size(0, 19.sp),
            ),
            child: MyText(
              title: 'شروع چالش',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: 17.sp,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          bottom: 32.sp,
          right: 10.sp,
          left: 22.sp,
          child: MyText(
            title: postSubText,
            style: TextStyle(
              fontFamily: 'dana_bold',
              fontSize: 13.sp,
              color: theme.secondary,
            ),
          ),
        ),
        Positioned(
          bottom: 27.sp,
          right: 0,
          left: 0,
          child: Divider(
            thickness: 2,
            color: theme.surface,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Row(
            children: [
              MyText(
                title: 'پسندیدن',
                style: TextStyle(
                  fontFamily: 'dana_light',
                  color: theme.secondary,
                  fontSize: 15.5.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: ResponsiveLayout.isTablet(context) ? 12.sp : 10.sp),
              MyText(
                title: '10',
                style: TextStyle(fontFamily: 'dana_light', fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: ResponsiveLayout.isTablet(context) ? 12.sp : 10.sp),
              Image.asset(
                'assets/Icons/like.png',
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 51.sp,
          child: Row(
            children: [
              MyText(
                title: 'پیام',
                style: TextStyle(
                  fontFamily: 'dana_light',
                  color: theme.secondary,
                  fontSize: 15.5.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: ResponsiveLayout.isTablet(context) ? 12.sp : 10.sp),
              MyText(
                title: '18',
                style: TextStyle(fontFamily: 'dana_light', fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                  width: ResponsiveLayout.isTablet(context) ? 12.sp : 10.sp),
              Image.asset(
                'assets/Icons/comments.png',
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 16.sp,
          child: Row(
            children: [
              Assets.icons.archive.image(color: theme.primary),
              SizedBox(
                  width: ResponsiveLayout.isTablet(context) ? 13.sp : 12.sp),
              Assets.icons.export.image(color: theme.primary),
            ],
          ),
        ),
      ],
    ),
  );
}
