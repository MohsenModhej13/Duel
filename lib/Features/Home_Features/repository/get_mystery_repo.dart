import 'dart:convert';
import 'package:duel/Core/Storage/models/ViewModel/Mystery.dart';
import 'package:duel/Features/Home_Features/api/content_api.dart';

class GetMysteryRepo{
  GetMysteryRepo({required this.contentApi});

  late ContentApi contentApi;

  Future<List<Mystery>> getMysteries(String userId, String limit)async{
    final response =await contentApi.getMysteries(userId, limit);

    final decode = jsonDecode(response.body);

    final List listData = decode as List;

    final List<Mystery> responseData = listData.map((x) => Mystery.fromJson(x)).toList();

    return responseData;
  }
}