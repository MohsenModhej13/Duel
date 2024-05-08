import 'package:duel/Core/Route/route_name.dart';
import 'package:duel/Features/Auth_Features/view/send_otp_view.dart';
import 'package:duel/Features/Auth_Features/view/check_otp_view.dart';
import 'package:duel/Features/Home_Features/view/home_view.dart';
import 'package:duel/Features/Intro_Features/view/intro_view.dart';
import 'package:duel/Features/Intro_Features/view/splash_view.dart';
import 'package:duel/Features/Public_Features/view/navbar_view.dart';
import 'package:flutter/material.dart';

typedef RouteGenerator = Map<String, Widget Function(BuildContext)>;

RouteGenerator get appRoute => {
      RouteName.splash: (context) => const SplashView(),
      RouteName.sendOtp: (context) => const SendOTP(),
      RouteName.checkOtp: (context) => const CheckOTPView(),
      RouteName.intro: (context) => const IntroView(),
      RouteName.home: (context) => const HomeView(),
      RouteName.navbar: (context) => const AppNavigationBar(),
    };
