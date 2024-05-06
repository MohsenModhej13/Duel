import 'package:duel/Core/Layout/responsive_layout.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({
    super.key,
    required this.formKey,
    required this.phoneNumber,
    required this.border,
    required this.apptheme,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController phoneNumber;
  final OutlineInputBorder border;
  final ColorScheme apptheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
