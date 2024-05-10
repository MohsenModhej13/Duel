import 'package:duel/Core/Constant/constants.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Posts_Features/widget/post_section.dart';
import 'package:duel/Features/Home_Features/widget/story_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            centerTitle: true,
            title: MyText(
              title: 'Duel',
              style: TextStyle(
                fontFamily: 'dana_bold',
                fontSize: ResponsiveLayout.isTablet(context) ? 20.sp : 19.sp,
              ),
            ),
            actions: [
              Icon(
                Icons.notifications_outlined,
                color: Constants.theme(context).primary,
                size: 27,
              ),
              const SizedBox(width: 4),
              Assets.icons.messages.image(
                color: Constants.theme(context).primary,
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(width: 6),
            ],
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Constants.theme(context).background,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              storySection(context),
              const Divider(),
              postSection(context),
            ],
          ),
        ),
      );
}
