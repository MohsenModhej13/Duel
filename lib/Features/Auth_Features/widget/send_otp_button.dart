import 'package:duel/Core/Constant/constants.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Core/Route/route_name.dart';
import 'package:duel/Features/Auth_Features/bloc/send-otp-bloc/send_otp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SendOTPButton extends StatefulWidget {
  const SendOTPButton({super.key, required this.phoneNumber});

  final TextEditingController phoneNumber;

  @override
  State<SendOTPButton> createState() => _SendOTPButtonState();
}

class _SendOTPButtonState extends State<SendOTPButton> {
  @override
  Widget build(BuildContext context) {
    final spinkitCircle = SpinKitFadingCircle(
      itemBuilder: (BuildContext context, int index) => DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      ),
    );
    return BlocListener<SendOTPBloc, SendOTPState>(
      listener: (context, state) {
        if (state is SendOTPSuccess) {
          Navigator.pushReplacementNamed(
            context,
            RouteName.checkOtp,
            arguments: {'phoneNumber': widget.phoneNumber.text.trim()},
          );
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'OTP sent successfully! :D',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          );
        } else if (state is SendOTPFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('OTP sending failed! :(')));
        }
      },
      child: ElevatedButton(
        onPressed: () {
          //Todo: DONT USE THIS
          // SendOTPRepo().callAuthApi(phoneNumber.text.trim());

          // Todo: USE THIS
          BlocProvider.of<SendOTPBloc>(context).add(
            CallOtpEvent(
              phoneNumber: widget.phoneNumber.text.trim(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.sp),
          ),
          backgroundColor: const Color(0xff3F8DFD),
          fixedSize: Size(
            Constants.screenSize(context).width * 0.7,
            20.sp,
          ),
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
    );
  }
}
