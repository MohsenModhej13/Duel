import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/Route/route_name.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Auth_Features/bloc/check-otp-bloc/check_otp_bloc.dart';
import 'package:duel/Features/Auth_Features/widget/pin_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../Core/Constant/constants.dart';

class CheckOTPView extends StatefulWidget {
  const CheckOTPView({super.key});

  @override
  State<CheckOTPView> createState() => _CheckOTPViewState();
}

class _CheckOTPViewState extends State<CheckOTPView> {
  late TextEditingController pinCodeController;
  late final String? correctOTP;

  @override
  void initState() {
    pinCodeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Mapper args = ModalRoute.of(context)!.settings.arguments as Mapper;
    final appTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: AspectRatio(
                aspectRatio: 2 / 1,
                child: Assets.images.safe.image(
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 14.sp),
            MyText(
              title: ' گوش به زنگ باش !',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: ResponsiveLayout.isTablet(context) ? 19.sp : 18.sp,
                foreground: Paint()
                  ..shader = const LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(255, 169, 201, 247),
                      Color.fromARGB(255, 129, 180, 252),
                    ],
                  ).createShader(
                    const Rect.fromLTWH(50, 0, 400, 0),
                  ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.sp),
            MyText(
              title:
                  ' یک کد 6 رقمی برای شما پیامک کردیم \nکد را در قسمت پایین وارد کنید',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: 13.sp,
                fontWeight: FontWeight.w100,
                color: appTheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.sp),
            PinCodeWidget(pinCodeController: pinCodeController),
            SizedBox(height: 16.sp),
            MyText(
              title: '60 ثانیه تا ارسال دوباره کد تایید',
              style: TextStyle(
                fontFamily: 'dana_regular',
                fontSize: 14.sp,
                color: appTheme.secondary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              width: Constants.screenSize(context).width * 0.8,
              child: BlocListener<CheckOTPBloc, CheckOTPState>(
                listener: (context, state) {
                  print(state);
                  if (state is CheckOTPSuccess) {
                    Navigator.pushReplacementNamed(context, RouteName.navbar);
                  }
                },
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CheckOTPBloc>(context).add(
                      CheckOTPEvent(
                        args['phoneNumber'],
                        pinCodeController.text.trim(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.sp),
                    ),
                    backgroundColor: const Color(0xff3F8DFD),
                    fixedSize: Size(64.sp, 17.sp),
                  ),
                  child: MyText(
                    title: 'تایید',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'dana_demibold',
                      fontSize: 16.8.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



Widget otpBoxView(BuildContext context) => Container(
      width: ResponsiveLayout.isTablet(context) ? 52.sp : 50.sp,
      height: ResponsiveLayout.isTablet(context) ? 52.sp : 50.sp,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
