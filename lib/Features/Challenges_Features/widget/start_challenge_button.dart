import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Core/Components/my_elevate_button.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartChallengeButton extends StatelessWidget {
  const StartChallengeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MyElevateButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          Constants.screenSize(context).width * 0.7.sp,
          Constants.screenSize(context).height * 0.012.sp,
        ),
        backgroundColor: const Color(0xFF5090F0),
      ),
      onPressed: () {},
      child: MyText(
        title: 'انجام چالش',
        style: TextStyle(
          fontFamily: 'dana_medium',
          fontSize: 13.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
