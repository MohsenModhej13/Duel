import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/Route/route_name.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../Config/Constant/constants.dart';

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
            Container(
              margin: EdgeInsets.only(
                  bottom: 10.0,
                  left: Constants.screenSize(context).width * 0.07,
                  right: Constants.screenSize(context).width * 0.07),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: PinCodeTextField(
                  appContext: context,
                  textStyle: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  pastedTextStyle: TextStyle(
                    color: Colors.green.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 6,
                  validator: (v) {
                    if (v!.length < 6) {
                      return "کد را کامل پر کنید";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    borderWidth: 0.1,
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    activeColor: Colors.lightBlue,
                    selectedColor: Colors.lightBlue,
                    selectedFillColor: Colors.blueAccent,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Colors.lightBlue,
                  ),
                  cursorColor: Colors.black,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  autoDisposeControllers: false,
                  controller: pinCodeController,
                  keyboardType: TextInputType.number,
                  boxShadows: const [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ],
                  onCompleted: (enteredOTP) {
                    if (enteredOTP == correctOTP) {
                      // OTP verified, show Snackbar and navigate
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('تایید کد با موفقیت انجام شد!'),
                        ),
                      );
                      Navigator.pushReplacementNamed(
                        context,
                        RouteName.home,
                      ); // Replace with actual route name
                    } else {
                      debugPrint('Entered OTP does not match');
                    }
                  },
                  onChanged: (value) {
                    debugPrint(value);
                    // setState(() {
                    // currentText = value;
                    // });
                  },
                  beforeTextPaste: (text) {
                    debugPrint("Allowing to paste $text");

                    return true;
                  },
                ),
              ),
            ),
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
              child: ElevatedButton(
                onPressed: () {},
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
