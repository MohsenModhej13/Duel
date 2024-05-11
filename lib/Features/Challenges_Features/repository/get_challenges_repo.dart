import 'dart:convert';

import 'package:duel/Features/Challenges_Features/api/challenge_api.dart';

class GetChallengesRepo{
  GetChallengesRepo(this.challengeApi);
  late ChallengeApi challengeApi;

  // Future<void> getChallenges(String userId, String limit)async{
  //   final response =
  //   await challengeApi.getChallenges(userId,limit);
  //   final decoding = jsonDecode(response.body);
  //   return
  // }
}