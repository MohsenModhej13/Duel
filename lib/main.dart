import 'package:duel/Features/Auth_Features/repository/auth_repo.dart';
import 'package:duel/Features/Auth_Features/bloc/otp_bloc.dart';
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
          BlocProvider(create: (context) => OtpBloc(AuthRepository())),
          BlocProvider(create: (context) => NavbarCubit()),
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => const MainApp(),
        ),
      ),
    );
