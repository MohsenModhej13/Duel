// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:duel/Core/Constant/constants.dart';

class SendOTPModel {
  SendOTPModel({
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

  SendOTPModel copyWith({
    String? phoneNumber,
    String? countriesCode,
    int? verificationCode,
    String? stateUser,
    int? userId,
  }) =>
      SendOTPModel(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        countriesCode: countriesCode ?? this.countriesCode,
        verificationCode: verificationCode ?? this.verificationCode,
        stateUser: false,
        userId: userId ?? this.userId,
      );

  Mapper toMap() => {
        'phoneNumber': phoneNumber,
        'countriesCode': countriesCode,
        'verification_code': verificationCode,
        'state_user': stateUser,
        'userId': userId,
      };

  factory SendOTPModel.fromMap(Mapper map) => SendOTPModel(
        phoneNumber: map['phoneNumber'].toString(),
        countriesCode: map['countriesCode'].toString(),
        verificationCode: int.parse(map['verification_code']),
        stateUser: map['state_user'] as bool,
        userId: map['userId'],
      );
}
