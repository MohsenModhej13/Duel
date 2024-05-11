
import 'package:duel/Core/Storage/models/User.dart';

class Mystery {
  int id;
  int userId;
  User? user;
  String image;
  String videos;
  String audio;
  String captions;
  int like;
  int comment;
  int share;
  int save;
  String topic;
  DateTime createDate;
  DateTime editDate;
  int stateLevel;
  int stateShow;
  bool? stateLike;
  bool? stateSave;
  Mystery(
      {required this.id,
      required this.userId,
      this.user,
      required this.image,
      required this.videos,
      required this.audio,
      required this.captions,
      required this.like,
      required this.comment,
      required this.share,
      required this.save,
      required this.topic,
      required this.createDate,
      required this.editDate,
      required this.stateLevel,
      required this.stateShow,
      this.stateLike,
      this.stateSave});

  factory Mystery.fromJson(Map<String, dynamic> json) {
    return Mystery(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? 0,
      user: json['user'] == null ? null : User.deJsonUser(json['user']),
      image: json['image'] ?? "",
      videos: json['videos'] ?? "",
      audio: json['audio'] ?? "",
      captions: json['captions'] ?? "",
      like: json['like'] ?? 0,
      comment: json['comment'] ?? 0,
      share: json['share'] ?? 0,
      save: json['save'] ?? 0,
      topic: json['topic'] ?? "",
      createDate: json['crateDate'] == null
          ? DateTime.now()
          : DateTime.parse(json['crateDate']),
      editDate: json['editDate'] == null
          ? DateTime.now()
          : DateTime.parse(json['editDate']),
      stateLevel: json['stateLevel'] ?? 0,
      stateShow: json['stateShow'] ?? 0,
      stateLike: json['stateLike'] ?? false,
      stateSave: json['stateSave'] ?? false,
    );
  }

  static List<Mystery> parseJSONMystery(List<dynamic> jsonString) {
    List<dynamic> jsonDatas = jsonString;
    List<Mystery> Meetings = jsonDatas
        .map((item) => Mystery.fromJson(item))
        .cast<Mystery>()
        .toList();
    return Meetings;
  }
}
