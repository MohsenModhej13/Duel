class User {
  int? id;
  String FirstName;
  String LastName;
  String phoneNumber;
  String email;
  String isActive;
  String entryDate;
  String verificationCode;
  String profileImage;
  String username;
  String DisplayUsername;
  String userIds;
  String Bio;
  String Following;
  String Follower;
  User({
    this.id,
    required this.FirstName,
    required this.LastName,
    required this.phoneNumber,
    required this.email,
    required this.isActive,
    required this.entryDate,
    required this.verificationCode,
    required this.profileImage,
    required this.username,
    required this.DisplayUsername,
    required this.userIds,
    required this.Bio,
    required this.Following,
    required this.Follower,
  });

  Map<String, Object> toMap() {
    return {
      'FirstName': FirstName,
      'LastName': LastName,
      'phoneNumber': phoneNumber,
      'email': email,
      'isActive': isActive,
      'entryDate': entryDate,
      'verificationCode': verificationCode,
      'profileImage': profileImage,
      'username': username,
      'DisplayUsername': DisplayUsername,
      'userIds': userIds,
      'Bio': Bio,
      'Following': Following,
      'Follower': Follower,
    };
  }

  User deMap(userMap) {
    final int? id = userMap['id'] ?? '';
    final String FirstName = userMap['FirstName'] ?? '';
    final String LastName = userMap['LastName'] ?? '';
    final String phoneNumber = userMap['phoneNumber'] ?? '';
    final String email = userMap['email'] ?? '';
    final String isActive = userMap['isActive'] ?? false;
    final String entryDate = userMap['entryDate'] ?? '';
    final String verificationCode = userMap['verificationCode'] ?? '';
    final String profileImage = userMap['profileImage'] ?? '';
    final String username = userMap['username'] ?? '';
    final String DisplayUsername = userMap['DisplayUsername'] ?? '';
    final String userIds = userMap['userIds'] ?? '';
    final String Bio = userMap['Bio'] ?? '';
    final String Following = userMap['Following'] ?? '';
    final String Follower = userMap['Follower'] ?? '';
    return User(
      id: id,
      FirstName: FirstName,
      LastName: LastName,
      phoneNumber: phoneNumber,
      email: email,
      isActive: isActive,
      entryDate: entryDate,
      verificationCode: verificationCode,
      profileImage: profileImage,
      username: username,
      DisplayUsername: DisplayUsername,
      userIds: userIds,
      Bio: Bio,
      Following: Following,
      Follower: Follower,
    );
  }

  factory User.deJsonUser(userMap) {
    final int? id = userMap['id'] ?? '';
    final String FirstName = userMap['FirstName'] ?? '';
    final String LastName = userMap['LastName'] ?? '';
    final String phoneNumber = userMap['phoneNumber'] ?? '';
    final String email = userMap['email'] ?? '';
    final String isActive = userMap['isActive'].toString() ?? '';
    final String entryDate = userMap['entryDate'] ?? '';
    final String verificationCode = userMap['verificationCode'] ?? '';
    final String profileImage = userMap['profileImage'] ?? '';
    final String username = userMap['username'] ?? '';
    final String displayUsername = userMap['displayUsername'] ?? '';
    final String userIds = userMap['userIds'] ?? '';
    final String Bio = userMap['Bio'] ?? '';
    final String Following = userMap['Following'] ?? '';
    final String Follower = userMap['Follower'] ?? '';
    return User(
      id: id,
      FirstName: FirstName,
      LastName: LastName,
      phoneNumber: phoneNumber,
      email: email,
      isActive: isActive,
      entryDate: entryDate,
      verificationCode: verificationCode,
      profileImage: profileImage,
      username: username,
      DisplayUsername: displayUsername,
      userIds: userIds,
      Bio: Bio,
      Following: Following,
      Follower: Follower,
    );
  }
}
