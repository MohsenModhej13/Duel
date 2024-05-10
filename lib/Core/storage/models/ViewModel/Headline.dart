import 'dart:convert';

class Headline {
  int id;
  String title;
  String caption;
  String order;
  int userId;
  int shows;
  int coursesId;
  String crateDate;
  String editDate;

  Headline({
    required this.id,
    required this.title,
    required this.caption,
    required this.order,
    required this.userId,
    required this.shows,
    required this.coursesId,
    required this.crateDate,
    required this.editDate,
  });

  // A factory method to create a Headline object from JSON data
  factory Headline.fromJson(Map<String, dynamic> json) {
    return Headline(
      id: json['id'] == "null" ? 0 : json['id'],
      title: json['title'],
      caption: json['caption'].toString(),
      order: json['order'].toString(),
      userId: json['userId'] == "null" ? 0 : json['userId'],
      shows: json['shows'] == "null" ? 0 : json['shows'],
      coursesId: json['coursesId'] == "null" ? 0 : json['coursesId'],
      crateDate: json['crateDate'].toString(),
      editDate: json['editDate'].toString(),
    );
  }

// Now you can parse the JSON and access the data like this:
  static List<Headline> parseJSONHeadline(String jsonString) {
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    List<dynamic> jsonDatas = jsonData['headline'];
    List<Headline> headlines = jsonDatas
        .map((item) => Headline.fromJson(item))
        .cast<Headline>()
        .toList();
    return headlines;
  }
}
