import 'package:duel/Core/Components/my_icon_button.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/Theme/app_theme.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Auth_Features/repository/auth_repo.dart';
import 'package:duel/Features/Public_Features/bloc/theme-bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveLayout.isTablet(context) ? 16.sp : 13.sp,
              ),
              child: Form(
                key: formKey,
                child: TextFormField(
                  autofillHints: const [AutofillHints.oneTimeCode],
                  maxLengthEnforcement: MaxLengthEnforcement.none,
                  controller: phoneNumber,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'شماره تماس خود را وارد کنید';
                    } else if (value.trim().length != 11) {
                      return 'شماره تماس شما باید ۱۱ رقم باشد';
                    } else if (value.trim().startsWith('9')) {
                      return 'شماره همراه نادرست می باشد';
                    } else {
                      return null; // Valid input
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: border,
                    focusedBorder: border,
                    filled: true,
                    fillColor: apptheme.tertiary,
                    contentPadding: EdgeInsets.zero,
                    hintText: 'شماره تماس',
                    hintStyle: TextStyle(
                      color: apptheme.secondary,
                      fontFamily: 'dana_light',
                      fontSize: 16.sp,
                    ),
                    prefixIcon: Assets.icons.mobile.image(
                      color: apptheme.secondary,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            // Login Button
            ElevatedButton(
              onPressed: () {
                AuthRepository().callAuthApi(phoneNumber.text.trim());
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.sp),
                ),
                backgroundColor: const Color(0xff3F8DFD),
                fixedSize: Size(50.sp, 18.sp),
              ),
              child: MyText(
                title: 'تایید',
                style: TextStyle(
                  fontFamily: 'dana_demibold',
                  color: Colors.white,
                  fontSize: 17.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
