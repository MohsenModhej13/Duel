import 'dart:convert';
import 'package:duel/Core/Api/story_api.dart';
import 'package:duel/Features/Home_Features/model/add_story_model.dart';

class AddStoryRepo {
  final StoriesAPI storiesAPI = StoriesAPI();

  Future<String> addStory(AddStoryModel model) async {
    final response = await storiesAPI.addStory(model);

    final decode = jsonDecode(response.body);
    final data = decode["textError"];

    return data;
  }
}
