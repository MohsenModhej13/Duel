import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Home_Features/widget/post_section.dart';
import 'package:duel/Features/Home_Features/widget/story_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          backgroundColor: Constants.theme(context).background,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              homeBannerStatus(context),
              storySection(context),
              const Divider(),
              postSection(context),
            ],
          ),
        ),
      );

  Widget homeBannerStatus(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        ResponsiveLayout.isTablet(context) ? 25.sp : 25.sp,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            title: 'Duel',
            style: TextStyle(
              fontFamily: 'dana_bold',
              fontSize: ResponsiveLayout.isTablet(context) ? 20.sp : 19.sp,
            ),
          ),
          Wrap(
            children: [
              Icon(
                Icons.notifications_outlined,
                color: Constants.theme(context).primary,
                size: 27,
              ),
              const SizedBox(width: 6),
              Assets.icons.messages
                  .image(color: Constants.theme(context).primary),
            ],
          ),
        ],
      ),
    );
  }
}
