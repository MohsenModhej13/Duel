// ignore_for_file: inference_failure_on_function_return_type

import 'package:country_picker/country_picker.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showPicker(
  BuildContext context,
  Country country,
  Function(Country country) onSelect,
) =>
    showCountryPicker(
      showPhoneCode: true,
      context: context,
      onSelect: (value) => onSelect(value),
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 31.sp,
        backgroundColor: Colors.grey[100],
        textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
          fontFamily: Assets.fonts.danaMedium,
        ),
        borderRadius: BorderRadius.circular(20),
        inputDecoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[700]!, width: 2),
            borderRadius: BorderRadius.circular(13.sp),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.sp),
          ),
          prefixIcon: const Icon(Icons.search),
          labelStyle: TextStyle(
            color: Colors.grey[700],
            fontFamily: Assets.fonts.danaDemibold,
          ),
          labelText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey[600],
            fontFamily: Assets.fonts.danaDemibold,
          ),
          hintText: 'Start typing to search',
        ),
      ),
    );
