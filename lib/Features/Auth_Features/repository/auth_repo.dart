import 'dart:convert';

import 'package:duel/Features/Auth_Features/repository/auth_api.dart';

class AuthRepository {
  final AuthApiService _apiService = AuthApiService();

  Future<String> callAuthApi(String phoneNumber) async {
    // try {
    final response = await _apiService.sendOtpRequest(phoneNumber);
    final data = jsonDecode(response.body);
    print(data);
    return data.toString();
  }
}
