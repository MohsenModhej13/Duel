import 'dart:convert';

import 'package:duel/Features/Auth_Features/repository/auth_api.dart';

class AuthRepository {
  final AuthApiService _apiService = AuthApiService();

  Future<String> callSendOtpApi(String phoneNumber) async {
    // try {
    final response = await _apiService.sendOtpRequest(phoneNumber);
    final data = jsonDecode(response.body);
    return data.toString();
  }

  Future<String> callCheckOtpApi(String phoneNumber) async {
    // try {
    final response = await _apiService.sendOtpRequest(phoneNumber);
    final data = jsonDecode(response.body);
    return data.toString();
  }
}
