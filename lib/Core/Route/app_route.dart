import 'package:duel/Core/Route/route_name.dart';
import 'package:duel/Features/Auth_Features/view/otp_login.dart';
import 'package:duel/Features/Auth_Features/view/two_factor_login.dart';
import 'package:duel/Features/Home_Features/view/home_view.dart';
import 'package:duel/Features/Intro_Features/view/intro_view.dart';
import 'package:duel/Features/Intro_Features/view/splash_view.dart';
import 'package:duel/Features/Public_Features/view/navbar_view.dart';
import 'package:flutter/material.dart';

typedef RouteGenerator = Map<String, Widget Function(BuildContext)>;

RouteGenerator get appRoute => {
      RouteName.splash: (context) => const SplashView(),
      RouteName.sendOtp: (context) => const OTPLogin(),
      RouteName.checkOtp: (context) => const TwoFactorLogin(),
      RouteName.intro: (context) => const IntroView(),
      RouteName.home: (context) => const HomeView(),
      RouteName.navbar: (context) => const AppNavigationBar(),
    };
