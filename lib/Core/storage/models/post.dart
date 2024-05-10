class Post {
  final int id;
  final String userId;
  final String image;
  final String video;
  final String voice;
  final String description;
  final String like;
  final String comment;
  final int views;
  final String topic;
  final String showsContent;
  final String groupingId;
  final String createDate;
  final String editDate;
  final String endShow;
  final String access;

  Post({
    required this.id,
    required this.userId,
    required this.image,
    required this.video,
    required this.voice,
    required this.description,
    required this.like,
    required this.comment,
    required this.views,
    required this.topic,
    required this.showsContent,
    required this.groupingId,
    required this.createDate,
    required this.editDate,
    required this.endShow,
    required this.access,
  });

  Map<String, Object> toMap() {
    return {
      'id': id,
      'userId': userId,
      'image': image,
      'video': video,
      'voice': voice,
      'description': description,
      'like': like,
      'comment': comment,
      'views': views,
      'topic': topic,
      'showsContent': showsContent,
      'groupingId': groupingId,
      'createDate': createDate,
      'editDate': editDate,
      'endShow': endShow,
      'access': access,
    };
  }

  static Post fromMap(Map<String, Object> postMap) {
    return Post(
      id: postMap['id'] as int,
      userId: postMap['userId'] as String,
      image: postMap['image'] as String,
      video: postMap['video'] as String,
      voice: postMap['voice'] as String,
      description: postMap['description'] as String,
      like: postMap['like'] as String,
      comment: postMap['comment'] as String,
      views: postMap['views'] as int,
      topic: postMap['topic'] as String,
      showsContent: postMap['showsContent'] as String,
      groupingId: postMap['groupingId'] as String,
      createDate: postMap['createDate'] as String,
      editDate: postMap['editDate'] as String,
      endShow: postMap['endShow'] as String,
      access: postMap['access'] as String,
    );
  }
}
