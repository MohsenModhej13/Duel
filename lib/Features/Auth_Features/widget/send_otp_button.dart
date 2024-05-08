import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Core/Components/my_text.dart';
import 'package:duel/Features/Auth_Features/bloc/send_otp_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendOTPButton extends StatelessWidget {
  const SendOTPButton({
    super.key,
    required this.phoneNumber,
  });

  final TextEditingController phoneNumber;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendOTPBloc, SendOTPState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            // AuthRepository().callAuthApi(phoneNumber.text.trim());
            BlocProvider.of<SendOTPBloc>(context).add(
              CallOtpEvent(
                phoneNumber: phoneNumber.text.trim(),
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
        );
      },
    );
  }
}
