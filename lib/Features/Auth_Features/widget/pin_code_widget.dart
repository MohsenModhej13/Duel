import 'package:duel/Core/Constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeWidget extends StatelessWidget {
  const PinCodeWidget({
    super.key,
    required this.pinCodeController,
  });

  final TextEditingController pinCodeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: 10.0,
          left: Constants.screenSize(context).width * 0.07,
          right: Constants.screenSize(context).width * 0.07),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PinCodeTextField(
          appContext: context,
          textStyle:
          const TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
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
          onChanged: (value) {
            debugPrint(value);
          },
          beforeTextPaste: (text) {
            debugPrint("Allowing to paste $text");

            return true;
          },
        ),
      ),
    );
  }
}