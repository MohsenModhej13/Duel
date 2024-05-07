import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Challenges_Features/widget/start_challenge_button.dart';
import 'package:duel/Features/Posts_Features/widget/post_banner_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String postSubText =
    'چه کسی عاشق معما و بازی‌های فکری چالش برانگیز نیست؟ معماها به ما کمک می‌کنند بیشتر راجع به مسائل مختلف فکر کنم و فکر خودمان را به چالش بکشیم. اغلب معماها از تکنیک‌هایی استفاده می‌کنند که ذهن ...';

Widget postSection(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        postBannerStatus(context),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.sp),
              child: Image.asset(
                'assets/Images/rect.png',
                fit: BoxFit.cover,
                width: Constants.screenSize(context).width * 0.92.sp,
                height: Constants.screenSize(context).height * 0.32.sp,
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
            // Positioned(
            //   right: Constants.screenSize(context).width * 0.1,
            //   left: Constants.screenSize(context).width * 0.1,
            //   bottom: 0,
            //   child: MyElevateButton(
            //     style: ElevatedButton.styleFrom(
            //       fixedSize: Size(0, 20.sp),
            //     ),
            //     onPressed: () {},
            //     child: MyText(
            //       title: 'انجام چالش',
            //       style: TextStyle(fontFamily: 'dana_medium', fontSize: 12.sp),
            //     ),
            //   ),
            // ),
          ],
        ),
        SizedBox(height: 2.sp),
        const StartChallengeButton(),
        SizedBox(height: Constants.screenSize(context).height * 0.001.sp),
        Divider(color: Constants.theme(context).surface),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Assets.icons.archive
                  .image(color: Constants.theme(context).primary),
              Assets.icons.export
                  .image(color: Constants.theme(context).primary),
              const Spacer(),
              Wrap(
                children: [
                  Assets.icons.comments.image(
                    color: Constants.theme(context).primary,
                  ),
                  Assets.icons.like.image(
                    color: Constants.theme(context).primary,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
