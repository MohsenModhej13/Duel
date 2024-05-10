// ignore_for_file: non_constant_identifier_names

import 'package:duel/Core/storage/models/User.dart';
import 'package:duel/Core/storage/models/ViewModel/CommentsMy.dart';
import 'package:duel/Core/storage/models/ViewModel/Mystery.dart';
import 'package:duel/Core/storage/models/ViewModel/Questionmystery.dart';

class Mysterymodel {
  User user;
  Mystery mystery;
  List<QuestionMystery> questionmystery;
  List<CommentsMy> Comments;
  bool? Likemystery;
  bool? SaveMystery;
  Mysterymodel({
    required this.user,
    required this.mystery,
    required this.questionmystery,
    required this.Comments,
    this.Likemystery,
    this.SaveMystery,
  });
}
