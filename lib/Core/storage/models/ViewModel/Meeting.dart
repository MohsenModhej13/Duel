import 'dart:convert';

class Meeting {
  int id;
  String title;
  String caption;
  int order;
  String url;
  int userId;
  int shows;
  int headlineId;
  String crateDate;
  String editDate;

  Meeting({
    required this.id,
    required this.title,
    required this.caption,
    required this.order,
    required this.url,
    required this.userId,
    required this.shows,
    required this.headlineId,
    required this.crateDate,
    required this.editDate,
  });

  // A factory method to create a Meeting object from JSON data
  factory Meeting.fromJson(Map<String, dynamic> json) {
    return Meeting(
      id: json['id'],
      title: json['title'],
      caption: json['caption'].toString(),
      order: json['order'],
      url: json['url'],
      userId: json['userId'],
      shows: json['shows'],
      headlineId: json['headlineId'],
      crateDate: json['crateDate'].toString(),
      editDate: json['editDate'].toString(),
    );
  }
  // Now you can parse the JSON and access the data like this:
  static List<Meeting> parseJSONMeetings(String jsonString) {
    Map<String, dynamic> jsonData = jsonDecode(jsonString);
    List<dynamic> jsonDatas = jsonData['meetings'];
    List<Meeting> Meetings = jsonDatas
        .map((item) => Meeting.fromJson(item))
        .cast<Meeting>()
        .toList();
    return Meetings;
  }
}
