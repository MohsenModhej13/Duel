// ignore_for_file: non_constant_identifier_names

import 'package:duel/Core/Storage/models/User.dart';

class CommentsMy {
  int id;
  String text;
  int like;
  int userId;
  User user;
  int mysteryId;
  int? CommentReplayId;
  int? LevelComment;
  DateTime createDate;

  CommentsMy({
    required this.id,
    required this.text,
    required this.like,
    required this.userId,
    required this.user,
    this.CommentReplayId,
    this.LevelComment,
    required this.mysteryId,
    required this.createDate,
  });

  factory CommentsMy.fromJson(Map<String, dynamic> json) {
    return CommentsMy(
      id: json['id'] ?? 0,
      text: json['text'] ?? "",
      like: json['like'] ?? 0,
      userId: json['userId'] ?? 0,
      user: User.deJsonUser(json['user']),
      CommentReplayId:
          json['commentReplayId'] ?? 0,
      LevelComment: json['levelComment'] ?? 0,
      mysteryId: json['mysteryId'] ?? 0,
      createDate: json['createDate'] == null
          ? DateTime.now()
          : DateTime.parse(json['createDate']),
    );
  }

  static List<CommentsMy> parseJSONComments(List<dynamic> jsonString) {
    List<dynamic> jsonDatas = jsonString;
    List<CommentsMy> comments = jsonDatas
        .map((item) => CommentsMy.fromJson(item))
        .cast<CommentsMy>()
        .toList();
    return comments;
  }
}
