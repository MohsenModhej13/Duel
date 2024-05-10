import 'package:duel/Core/storage/models/User.dart';
import 'package:duel/Core/storage/models/ViewModel/Mystery.dart';
import 'package:duel/Core/storage/models/ViewModel/SaveMystery.dart';


class UserProfileModel {
  User user;
  List<Mystery> mystery;
  List<SaveMystery> saveMystery;

  UserProfileModel({
    required this.user,
    required this.mystery,
    required this.saveMystery,
  });
}
