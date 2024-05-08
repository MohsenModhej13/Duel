import 'package:duel/Core/Components/my_icon_button.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Route/app_route.dart';
import 'package:duel/Core/Theme/app_theme.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Auth_Features/widget/phone_number_input.dart';
import 'package:duel/Features/Auth_Features/widget/send_otp_button.dart';
import 'package:duel/Features/Public_Features/bloc/theme-bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/Route/route_name.dart';

class OTPLogin extends StatefulWidget {
  const OTPLogin({super.key});

  @override
  State<OTPLogin> createState() => _OTPLoginState();
}

class _OTPLoginState extends State<OTPLogin> {
  @override
  Widget build(BuildContext context) {
    const otpStatusText =
        'شماره تماستو بنویس \n برای اینکه وارد برنامه بشی بهش نیاز دارم';

    final apptheme = Theme.of(context).colorScheme;
    final formKey = GlobalKey<FormState>();
    final phoneNumber = TextEditingController();
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.sp),
      borderSide: const BorderSide(color: Colors.transparent),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BlocBuilder<ThemeBloc, ThemeData>(
          builder: (context, themeData) => MyIconButton(
            onPressed: () {
              BlocProvider.of<ThemeBloc>(context).add(ThemeSwitchEvent());
            },
            icon: themeData == CustomTheme.darkMode
                ? const Icon(Icons.sunny)
                : const Icon(Icons.dark_mode),
          ),
        ),
      ),
      backgroundColor: apptheme.background,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: 2.7 / 1,
                child: Assets.images.shield.image(
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 24.sp),
            MyText(
              title: otpStatusText,
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: 16.5.sp,
                height: 1.6.sp,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: Theme.of(context).brightness == Brightness.dark
                        ? const <Color>[
                            Color.fromARGB(255, 184, 209, 248),
                            Color.fromARGB(255, 129, 180, 252),
                          ]
                        : <Color>[
                            apptheme.primary,
                            apptheme.primary,
                          ],
                  ).createShader(
                    const Rect.fromLTWH(30, 0, 400, 0),
                  ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.sp),
            PhoneNumberInput(formKey: formKey, phoneNumber: phoneNumber, border: border, apptheme: apptheme),
            const Spacer(),
            // Login Button
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(RouteName.checkOtp);
            }, child: Text("asdas"))
            // SendOTPButton(phoneNumber: phoneNumber),
          ],
        ),
      ),
    );
  }
}

