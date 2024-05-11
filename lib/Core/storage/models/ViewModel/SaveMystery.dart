

import 'package:duel/Core/Storage/models/User.dart';
import 'package:duel/Core/Storage/models/ViewModel/Mystery.dart';

class SaveMystery {
  int id;
  int userId;
  User? user;
  int mysteryId;
  Mystery mystery;
  DateTime createDate;
  DateTime editDate;

  SaveMystery({
    required this.id,
    required this.userId,
    required this.mysteryId,
    required this.mystery,
    required this.createDate,
    required this.editDate,
  });

  factory SaveMystery.fromJson(Map<String, dynamic> json) {
    return SaveMystery(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? 0,
      mysteryId: json['mysteryId'] ?? 0,
      mystery: Mystery.fromJson(json['mystery'] ?? {}),
      createDate: json['createDate'] == null
          ? DateTime.now()
          : DateTime.parse(json['createDate']),
      editDate: json['editDate'] == null
          ? DateTime.now()
          : DateTime.parse(json['editDate']),
    );
  }

  static List<SaveMystery> parseJSONMystery(List<dynamic> jsonString) {
    List<dynamic> jsonDatas = jsonString;
    List<SaveMystery> data = jsonDatas
        .map((item) => SaveMystery.fromJson(item))
        .cast<SaveMystery>()
        .toList();
    return data;
  }
}
