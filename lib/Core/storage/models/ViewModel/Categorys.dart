import 'dart:convert';

class Categorys {
  int id;
  String title;
  String description;
  String icon;
  String create;
  int userId;
  int level;
  int objectState;

  Categorys({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.create,
    required this.userId,
    required this.level,
    required this.objectState,
  });

  factory Categorys.fromJson(Map<String, dynamic> json) {
    return Categorys(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      icon: json['icon'],
      create: json['create'],
      userId: json['userId'],
      level: json['level'],
      objectState: json['objectState'],
    );
  }
  List<Categorys> parseCategorys(String jsonString) {
    List<dynamic> jsonData = jsonDecode(jsonString);
    List<Categorys> courses = jsonData
        .map((item) => Categorys.fromJson(item))
        .cast<Categorys>()
        .toList();
    return courses;
  }
}
