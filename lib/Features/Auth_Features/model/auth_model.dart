// ignore_for_file: public_member_api_docs, sort_constructors_first

class AuthModel {
  AuthModel({
    required this.phoneNumber,
    required this.countriesCode,
    required this.verificationCode,
    required this.stateUser,
    required this.userId,
  });

  final String phoneNumber;
  final String countriesCode;
  final int verificationCode;
  final bool stateUser;
  final int userId;

  AuthModel copyWith({
    String? phoneNumber,
    String? countriesCode,
    int? verificationCode,
    String? stateUser,
    int? userId,
  }) =>
      AuthModel(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        countriesCode: countriesCode ?? this.countriesCode,
        verificationCode: verificationCode ?? this.verificationCode,
        stateUser: false,
        userId: userId ?? this.userId,
      );

  Map<String, dynamic> toMap() => {
        'phoneNumber': phoneNumber,
        'countriesCode': countriesCode,
        'verification_code': verificationCode,
        'state_user': stateUser,
        'userId': userId,
      };

  factory AuthModel.fromMap(Map<String, dynamic> map) => AuthModel(
        phoneNumber: map['phoneNumber'].toString(),
        countriesCode: map['countriesCode'].toString(),
        verificationCode: int.parse(map['verification_code']),
        stateUser: map['state_user'] as bool,
        userId: int.parse(map['userId']),
      );
}
