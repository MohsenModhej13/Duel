import 'dart:convert';

import 'package:duel/Core/Constant/base_url.dart';
import 'package:http/http.dart' as http;

class ContentApi{

  Future<http.Response>getMystery(String userId, String limit)async{
    final parseUri = Uri.parse(getContentURL);
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
        'Failed to get mystery request (Status Code: ${response.statusCode})',
      );
    }

  }
}