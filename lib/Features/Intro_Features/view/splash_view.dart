// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:duel/Core/Constant/constants.dart';
import 'package:duel/Core/Route/route_name.dart';
import 'package:duel/Core/Storage/shared_pref.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  navigate() {
    Timer(
      const Duration(seconds: 3),
      () async {
        if (await SharedPrefStorage.getIntroStatus()) {
          if (await SharedPrefStorage.getUserID() != null) {
            Navigator.of(context)
                .pushNamedAndRemoveUntil(RouteName.navbar, (route) => false);
          } else {
            Navigator.of(context).pushReplacementNamed(RouteName.sendOtp);
          }
        } else {
          Navigator.of(context).pushReplacementNamed(RouteName.intro);
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: FadeInDown(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.splashLogo.image(
                  width: Constants.screenSize(context).width,
                  height: Constants.screenSize(context).height * 0.5.sp,
                ),
              ],
            ),
          ),
        ),
      );
}
