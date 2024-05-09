import 'package:duel/Features/Auth_Features/bloc/check-otp-bloc/check_otp_bloc.dart';
import 'package:duel/Features/Auth_Features/bloc/send-otp-bloc/send_otp_bloc.dart';
import 'package:duel/Features/Auth_Features/repository/check_otp_repo.dart';
import 'package:duel/Features/Auth_Features/repository/send_otp_repo.dart';
import 'package:duel/Features/Public_Features/bloc/nav-cubit/navbar_cubit.dart';
import 'package:duel/Features/Public_Features/bloc/theme-bloc/theme_bloc.dart';
import 'package:duel/advance_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeBloc()),
          BlocProvider(create: (context) => NavbarCubit()),
          BlocProvider(create: (context) => SendOTPBloc(SendOTPRepo())),
          BlocProvider(create: (context) => CheckOTPBloc(CheckOTPRepo())),

        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => const MainApp(),
        ),
      ),
    );
