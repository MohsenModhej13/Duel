import 'dart:convert';

import 'package:duel/Features/Auth_Features/model/check_otp_model.dart';
import 'package:duel/Features/Auth_Features/repository/auth_api.dart';

class CheckOTPRepo {
  final AuthApiService apiService = AuthApiService();

  Future<CheckOTPModel> callCheckOTP(
      String phoneNumber, String otpPassword) async {
    final response =
        await apiService.checkOtpRequest(phoneNumber, otpPassword: otpPassword);
    final decoding = jsonDecode(response.body);
    return CheckOTPModel.fromMap(decoding);
  }
}
