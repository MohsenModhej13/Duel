import 'dart:convert';
import 'package:duel/Features/Home_Features/api/content_api.dart';
import 'package:duel/Features/Home_Features/model/add_story_model.dart';

class AddStoryRepo{
  final ContentApi contentApi = ContentApi();

  Future<String> addStory(AddStoryModel model)async{

    final response =await contentApi.addStory(model);

    final decode = jsonDecode(response.body);
    final data = decode["textError"];

    return data;
  }
}