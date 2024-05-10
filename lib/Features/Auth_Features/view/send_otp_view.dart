import 'package:duel/Core/Constant/constants.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Auth_Features/widget/greetings_text.dart';
import 'package:duel/Features/Auth_Features/widget/phone_number_input.dart';
import 'package:duel/Features/Auth_Features/widget/send_otp_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendOTP extends StatefulWidget {
  const SendOTP({super.key});

  @override
  State<SendOTP> createState() => _SendOTPState();
}

class _SendOTPState extends State<SendOTP> {
  @override
  Widget build(BuildContext context) {
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
        // leading: BlocBuilder<ThemeBloc, ThemeData>(
        //   builder: (context, themeData) => MyIconButton(
        //     onPressed: () {
        //       BlocProvider.of<ThemeBloc>(context).add(ThemeSwitchEvent());
        //     },
        //     icon: themeData == CustomTheme.darkMode
        //         ? const Icon(Icons.sunny)
        //         : const Icon(Icons.dark_mode),
        //   ),
        // ),
      ),
      backgroundColor: Constants.theme(context).background,
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
            const GreetingsText(),
            SizedBox(height: 16.sp),
            PhoneNumberInput(
              formKey: formKey,
              phoneNumber: phoneNumber,
              border: border,
              apptheme: Constants.theme(context),
            ),
            const Spacer(),

            // Send OTP Button
            SendOTPButton(phoneNumber: phoneNumber),
          ],
        ),
      ),
    );
  }
}
