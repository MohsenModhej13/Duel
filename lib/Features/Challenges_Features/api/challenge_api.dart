import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../Core/Constant/base_url.dart';

class ChallengeApi{

  Future<http.Response> getChallenges(String userId, String limit,) async {
    final parseUri = Uri.parse(getChallengesURL);
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final map = {
      'userId': userId,
      'limit': limit,
    };
    final body = jsonEncode(map);

    final response = await http.post(parseUri, headers: headers, body: body);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
        'Failed to get challenges request (Status Code: ${response.statusCode})',
      );
    }
  }
}