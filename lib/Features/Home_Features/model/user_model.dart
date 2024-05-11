class User {
  final int id;
  final String userName;
  final String normalizedUserName;
  final String email;
  final String normalizedEmail;
  final bool emailConfirmed;
  final String passwordHash;
  final String securityStamp;
  final String concurrencyStamp;
  final bool twoFactorEnabled;
  final DateTime? lockoutEnd;
  final bool lockoutEnabled;
  final int accessFailedCount;
  final int coin;
  final String? phoneNumber;
  final bool? phoneNumberConfirmed;
  final String? userChangeInfo;
  final DateTime? birthDate;
  final DateTime createdDateTime;
  final DateTime lastVisitDateTime;
  final bool isEmailPublic;
  final String? country;
  final String? province;
  final String? city;
  final String? location;
  final String? createdByuserId;
  final bool? locationConfirmed;
  final bool isActive;
  final DateTime? activeDate;
  final bool isOnline;
  final bool isCancel;
  final bool isSuspended;
  final bool isAccountVerificationFilter;
  final bool isDebtor;
  final String? suspendReason;
  final bool isVerified;
  final int absentCount;
  final DateTime? lastAbsentCalculationDate;
  final DateTime? lastSpecialFollowUpDate;
  final String? label;
  final String? codPost;
  final String? phone1;
  final String? phone2;
  final String? code;
  final int totalQuizPoints;
  final String socketId;
  final String tokenPeyment;
  final String tokenNotification;
  final int level;
  final int stepLevel;
  final List<dynamic> userUsedPasswords;
  final List<dynamic> userTokens;
  final dynamic roles;
  final dynamic logins;
  final dynamic claims;
  final dynamic userLog;
  final dynamic emailMessage;
  final dynamic privateMessage;
  // final List<Mystery> mysteries;
  // final List<SaveMystery> saveMysteries;
  final dynamic comment;
  // final List<FollowerUserMe> followerUserMe;
  // final List<FollowerUserPage> followerUserPage;

  User({
    required this.id,
    required this.userName,
    required this.normalizedUserName,
    required this.email,
    required this.normalizedEmail,
    required this.emailConfirmed,
    required this.passwordHash,
    required this.securityStamp,
    required this.concurrencyStamp,
    required this.twoFactorEnabled,
    required this.lockoutEnd,
    required this.lockoutEnabled,
    required this.accessFailedCount,
    required this.coin,
    required this.phoneNumber,
    required this.phoneNumberConfirmed,
    required this.userChangeInfo,
    required this.birthDate,
    required this.createdDateTime,
    required this.lastVisitDateTime,
    required this.isEmailPublic,
    required this.country,
    required this.province,
    required this.city,
    required this.location,
    required this.createdByuserId,
    required this.locationConfirmed,
    required this.isActive,
    required this.activeDate,
    required this.isOnline,
    required this.isCancel,
    required this.isSuspended,
    required this.isAccountVerificationFilter,
    required this.isDebtor,
    required this.suspendReason,
    required this.isVerified,
    required this.absentCount,
    required this.lastAbsentCalculationDate,
    required this.lastSpecialFollowUpDate,
    required this.label,
    required this.codPost,
    required this.phone1,
    required this.phone2,
    required this.code,
    required this.totalQuizPoints,
    required this.socketId,
    required this.tokenPeyment,
    required this.tokenNotification,
    required this.level,
    required this.stepLevel,
    required this.userUsedPasswords,
    required this.userTokens,
    required this.roles,
    required this.logins,
    required this.claims,
    required this.userLog,
    required this.emailMessage,
    required this.privateMessage,
    // required this.mysteries,
    // required this.saveMysteries,
    required this.comment,
    // required this.followerUserMe,
    // required this.followerUserPage,
  });
}
