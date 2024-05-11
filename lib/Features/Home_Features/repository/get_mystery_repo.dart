import 'dart:convert';

import 'package:duel/Core/Storage/models/ViewModel/Mystery.dart';
import 'package:duel/Features/Home_Features/api/content_api.dart';

class GetMysteryRepo {
  final ContentApi _contentApi = ContentApi();

  Future<List<Mystery>> getMystery(String userId, String limit) async {
    final response = await _contentApi.getMystery(userId, limit);

    final decode = jsonDecode(response.body);

    final List listData = decode as List;

    final List<Mystery> responseData =
        listData.map((x) => Mystery.fromJson(x)).toList();

    return responseData;
  }
}
