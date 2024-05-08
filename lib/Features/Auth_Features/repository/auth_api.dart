import 'dart:convert';

import 'package:duel/Config/Constant/base_url.dart';
import 'package:http/http.dart' as http;

class AuthApiService {
  String endPointUrl = '$baseUrl/api/auth/SendOtp';

  Future<http.Response> sendOtpRequest(
    String phoneNumber, {
    String? shogerCode,
  }) async {
    final parseUri = Uri.parse(endPointUrl);
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final map = {
      'phoneNumber': phoneNumber,
      'countriesCode': '98', // Consider making this dynamic or optional
      'TokenNotification': null,
      'shogerCode': shogerCode ?? "خوش آمدید", // Optional parameter
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
}
