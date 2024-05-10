class Courses {
  int id;
  int userId;
  String cover;
  String title;
  String caption;
  String descraption; // متن خام
  int shows;
  int catgorysId;
  String crateDate;
  String editDate;
  int views;
  int price;
  String time;
  String meetings;
  int star;

  Courses({
    required this.id,
    required this.userId,
    required this.cover,
    required this.title,
    required this.caption,
    required this.descraption,
    required this.shows,
    required this.catgorysId,
    required this.crateDate,
    required this.editDate,
    required this.views,
    required this.price,
    required this.time,
    required this.meetings,
    required this.star,
  });

  factory Courses.fromJson(Map<String, dynamic> json) {
    return Courses(
      id: json['id'],
      userId: json['userId'],
      cover: json['cover'],
      title: json['title'],
      caption: json['caption'].toString(),
      descraption: json['descraption'].toString(),
      shows: json['shows'],
      catgorysId: json['catgorysId'],
      crateDate: json['crateDate'].toString(),
      editDate: json['editDate'].toString(),
      views: json['views'],
      price: json['price'],
      time: json['time'],
      meetings: json['meetings'].toString(),
      star: json['star'],
    );
  }

  Courses fromJson(Map<String, dynamic> json) {
    return Courses(
      id: json['id'],
      userId: json['userId'],
      cover: json['cover'],
      title: json['title'],
      caption: json['caption'].toString(),
      descraption: json['descraption'].toString(),
      shows: json['shows'],
      catgorysId: json['catgorysId'],
      crateDate: json['crateDate'].toString(),
      editDate: json['editDate'].toString(),
      views: json['views'],
      price: json['price'],
      time: json['time'],
      meetings: json['meetings'].toString(),
      star: json['star'],
    );
  }
}
