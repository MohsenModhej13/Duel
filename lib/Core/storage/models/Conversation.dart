
class Conversation {
  int id;
  int conversationType;
  String? userIdChat;
  int userCreateId;
  int? userGuestId;
  String lastUpdateDate;
  String creationDate;
  String editDate;
  String coverImagePath;
  String description;
  String displayName;
  String lastmessage;
  int privacyType;

  Conversation({
    required this.id,
    required this.conversationType,
    this.userIdChat,
    required this.userCreateId,
    this.userGuestId,
    required this.lastUpdateDate,
    required this.creationDate,
    required this.editDate,
    required this.coverImagePath,
    required this.description,
    required this.displayName,
    required this.lastmessage,
    required this.privacyType,
  });

  Map<String, Object> toMap() {
    return {
      'id': id,
      'conversationType': conversationType,
      'userIdChat': userIdChat.toString(),
      'userCreateId': userCreateId,
      'userGuestId': userGuestId.toString(),
      'lastUpdateDate': lastUpdateDate.toString(),
      'creationDate': creationDate.toString(),
      'editDate': editDate.toString(),
      'coverImagePath': coverImagePath,
      'description': description,
      'displayName': displayName,
      'lastmessage': lastmessage,
      'privacyType': privacyType,
    };
  }

  static Conversation fromMap(Map<String, Object?> conversationMap) {
    return Conversation(
      id: conversationMap['id'] == 'null' ? 0 : conversationMap['id'] as int,
      conversationType: conversationMap['conversationType'] == null
          ? 0
          : conversationMap['conversationType'] as int,
      userIdChat: conversationMap['userIdChat'] == null
          ? '0'
          : conversationMap['userIdChat'].toString(),
      userCreateId: conversationMap['userCreateId'] == null
          ? 0
          : conversationMap['userCreateId'] as int,
      userGuestId: conversationMap['userGuestId'] == null
          ? 0
          : conversationMap['userGuestId'] as int?,
      lastUpdateDate: conversationMap['lastUpdateDate'].toString(),
      creationDate: conversationMap['creationDate'].toString(),
      editDate: conversationMap['editDate'].toString(),
      coverImagePath: conversationMap['coverImagePath'].toString(),
      description: conversationMap['description'].toString(),
      displayName: conversationMap['displayName'].toString(),
      lastmessage: conversationMap['lastmessage'].toString(),
      privacyType: conversationMap['privacyType'] == null
          ? 0
          : conversationMap['privacyType'] as int,
    );
  }

  // A factory method to create a Meeting object from JSON data
  factory Conversation.fromJson(dynamic conversationMap) {
    var result = Conversation(
      id: conversationMap.containsKey('id') ? conversationMap['id'] as int : 0,
      conversationType: conversationMap.containsKey('conversationType')
          ? conversationMap['conversationType'] as int
          : 0,
      userIdChat: conversationMap.containsKey('userIdChat')
          ? conversationMap['userIdChat'].toString()
          : '0',
      userCreateId: conversationMap.containsKey('userCreateId')
          ? conversationMap['userCreateId'] as int
          : 0,
      userGuestId: conversationMap.containsKey('userGuestId')
          ? conversationMap['userGuestId'] as int?
          : 0,
      lastUpdateDate: conversationMap['lastUpdateDate']?.toString() ?? '',
      creationDate: conversationMap['creationDate']?.toString() ?? '',
      editDate: conversationMap['editDate']?.toString() ?? '',
      coverImagePath: conversationMap['coverImagePath']?.toString() ?? '',
      description: conversationMap['description']?.toString() ?? '',
      displayName: conversationMap['displayName']?.toString() ?? '',
      lastmessage: conversationMap['lastMessage']?.toString() ?? '',
      privacyType: conversationMap.containsKey('privacyType')
          ? conversationMap['privacyType'] as int
          : 0,
    );
    return result;
  }

  // Now you can parse the JSON and access the data like this:
  static List<Conversation> parseToList(List<Map<String, dynamic>> dataStr) {
    List<dynamic> jsonDatas = dataStr;
    List<Conversation> Meetings = jsonDatas
        .map((item) => Conversation.fromJson(item))
        .cast<Conversation>()
        .toList();
    return Meetings;
  }
}
