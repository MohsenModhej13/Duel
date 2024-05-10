class Message {
  int id;
  String url;
  String text;
  int likes;
  int userSenderId;
  int conversationId;
  int? replyToMessageId;
  int contentType;
  int Messagestatus;
  DateTime sentDate;
  DateTime editDate;

  Message({
    required this.id,
    required this.url,
    required this.text,
    required this.likes,
    required this.userSenderId,
    required this.conversationId,
    this.replyToMessageId,
    required this.contentType,
    required this.Messagestatus,
    required this.sentDate,
    required this.editDate,
  });

  Map<String, Object> toMap() {
    return {
      'id': id,
      'url': url,
      'text': text,
      'likes': likes,
      'userSenderId': userSenderId,
      'conversationId': conversationId,
      'replyToMessageId': replyToMessageId!,
      'contentType': contentType,
      'Messagestatus': Messagestatus,
      'sentDate': sentDate.toIso8601String(),
      'editDate': editDate.toIso8601String(),
    };
  }

  static Message fromMap(Map<String, Object?> messageMap) {
    return Message(
      id: messageMap['id'] as int,
      url: messageMap['url'] as String,
      text: messageMap['text'] as String,
      likes: messageMap['likes'] as int,
      userSenderId: messageMap['userSenderId'] as int,
      conversationId: messageMap['conversationId'] as int,
      replyToMessageId: messageMap['replyToMessageId'] as int?,
      contentType: messageMap['contentType'] as int,
      Messagestatus: messageMap['Messagestatus'] as int,
      sentDate: DateTime.parse(messageMap['sentDate'] as String),
      editDate: DateTime.parse(messageMap['editDate'] as String),
    );
  }

  factory Message.fromJson(dynamic messageMap) {
    return Message(
      id: messageMap["id"] != null ? messageMap['id'] as int : 0,
      url: messageMap['url'] != null ? messageMap['url'].toString() : '',
      text: messageMap['text'] != null ? messageMap['text'].toString() : '',
      likes: messageMap["likes"] != null ? messageMap['likes'] as int : 0,
      userSenderId: messageMap["userSenderId"] != null
          ? messageMap['userSenderId'] as int
          : 0,
      conversationId: messageMap["conversationId"] != null
          ? messageMap['conversationId'] as int
          : 0,
      replyToMessageId: messageMap["replyToMessageId"] != null
          ? messageMap['replyToMessageId'] as int
          : 0,
      contentType: messageMap["contentType"] != null
          ? messageMap['contentType'] as int
          : 0,
      Messagestatus: messageMap["messagestatus"] != null
          ? messageMap['messagestatus'] as int
          : 0,
      sentDate: messageMap['sentDate'] != null
          ? DateTime.parse(messageMap['sentDate'])
          : DateTime.now(),
      editDate: messageMap['editDate'] != null
          ? DateTime.parse(messageMap['editDate'])
          : DateTime.now(),
    );
  }

  // Now you can parse the JSON and access the data like this:
  static List<Message> parseToList(List<Map<String, dynamic>> dataStr) {
    List<dynamic> jsonDatas = dataStr;

    List<Message> Meetings = jsonDatas
        .map((item) => Message.fromJson(item))
        .cast<Message>()
        .toList();
    return Meetings;
  }
}
