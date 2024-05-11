import 'dart:convert';

import 'package:duel/Core/Constant/base_url.dart';
import 'package:http/http.dart' as http;

import '../model/add_story_model.dart';

class ContentApi{

  Future<http.Response>getMysteries(String userId, String limit)async{
    final parseUri = Uri.parse(getMysteriesURL);
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

  //Story
  Future<http.Response>addStory(AddStoryModel model)async{
    final parseUri = Uri.parse(addNewStoryURL);
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    final map = {
      'ImageFile': model.imageFile,
      'ImageFileresult': model.imageFileResult,
      'UserId': model.userId,
      'text': model.text,
      'Question1': model.question1,
      'Question2': model.question2,
      'Question3': model.question3,
      'Question4': model.question4,
      'TrueQuestion': model.trueQuestion,
      'StepStory': model.stepStory,
      'id': model.statusId
    };
    final body = jsonEncode(map);

    final response = await http.post(parseUri, headers: headers, body: body);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
        'Failed to add story (Status Code: ${response.statusCode})',
      );
    }

  }
}