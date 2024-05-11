import 'dart:convert';
import 'package:duel/Core/Storage/models/ViewModel/Mystery.dart';
import 'package:duel/Core/Storage/shared_pref.dart';
import 'package:duel/Features/Home_Features/api/content_api.dart';

class GetMysteryRepo{
  final ContentApi contentApi = ContentApi();

  Future<List<Mystery>> getMystery(String limit)async{
    final userId =await SharedPrefStorage.getUserID();
    final response =await contentApi.getMysteries(userId!, limit);

    final decode = jsonDecode(response.body);

    final List listData = decode as List;

    final List<Mystery> responseData = listData.map((x) => Mystery.fromJson(x)).toList();

    return responseData;
  }
}