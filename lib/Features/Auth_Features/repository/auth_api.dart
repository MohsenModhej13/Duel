import 'dart:convert';

import 'package:duel/Config/Constant/base_url.dart';
import 'package:http/http.dart' as http;

class AuthApiService {
  String sendOTPURL = '$baseUrl/api/auth/SendOtp';
  String checkOTPURL = '$baseUrl/api/auth/CheckOtp';

  Future<http.Response> sendOtpRequest(
    String phoneNumber, {
    String? shogerCode,
  }) async {
    final parseUri = Uri.parse(sendOTPURL);
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final map = {
      'phoneNumber': phoneNumber,
      'countriesCode': '98', // Consider making this dynamic or optional
      'TokenNotification': null,
      'shogerCode':"خوش آمدید", // Optional parameter
    };
    final body = jsonEncode(map);

    final response = await http.post(parseUri, headers: headers, body: body);

    if (response.statusCode == 200) {
      // Successful request
      return response;
    } else {
      // Handle errors
      throw Exception(
        'Failed to send OTP request (Status Code: ${response.statusCode})',
      );
    }
  }

  Future<http.Response> checkOtpRequest(
      String phoneNumber, {
        String? otpPassword,
      }) async {
    final parseUri = Uri.parse(checkOTPURL);
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final map = {
      'phoneNumber': phoneNumber,
      'otpPassword': otpPassword,
    };
    final body = jsonEncode(map);

    final response = await http.post(parseUri, headers: headers, body: body);

    print(response.body);

    if (response.statusCode == 200) {
      // Successful request
      return response;
    } else {
      // Handle errors
      throw Exception(
        'Failed to check OTP request (Status Code: ${response.statusCode})',
      );
    }
  }
}
