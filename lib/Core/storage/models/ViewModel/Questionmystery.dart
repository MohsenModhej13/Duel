
class QuestionMystery {
  int id;
  int userId;
  int mystery;
  String text;
  String question1;
  String question2;
  String question3;
  String question4;
  int trueQuestion;
  DateTime createDate;
  DateTime editDate;

  QuestionMystery({
    required this.id,
    required this.userId,
    required this.mystery,
    required this.text,
    required this.question1,
    required this.question2,
    required this.question3,
    required this.question4,
    required this.trueQuestion,
    required this.createDate,
    required this.editDate,
  });

  factory QuestionMystery.fromJson(Map<String, dynamic> json) {
    return QuestionMystery(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? 0,
      mystery: json['mystery'] ?? 0,
      text: json['text'] ?? "",
      question1: json['question1'] ?? "",
      question2: json['question2'] ?? "",
      question3: json['question3'] ?? "",
      question4: json['question4'] ?? "",
      trueQuestion: json['trueQuestion'] ?? 0,
      createDate: json['crateDate'] == null
          ? DateTime.now()
          : DateTime.parse(json['crateDate']),
      editDate: json['editDate'] == null
          ? DateTime.now()
          : DateTime.parse(json['editDate']),
    );
  }
  static List<QuestionMystery> parseJSONQuestionMysterys(
      List<dynamic> jsonDatas) {
    List<QuestionMystery> Meetings = jsonDatas
        .map((item) => QuestionMystery.fromJson(item))
        .cast<QuestionMystery>()
        .toList();
    return Meetings;
  }
}
