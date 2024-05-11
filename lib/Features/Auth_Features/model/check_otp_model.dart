import 'package:duel/Core/Constant/constants.dart';

class CheckOTPModel {
  CheckOTPModel({
    required this.isLoggedIn,
    required this.message,
    required this.userId,
    required this.phoneNumber,
  });

  final bool isLoggedIn;
  final String message;
  final int userId;
  final String phoneNumber;

  CheckOTPModel copyWith({
    bool? isLoggedIn,
    String? message,
    int? userId,
    String? phoneNumber,
  }) =>
      CheckOTPModel(
        isLoggedIn: false,
        message: message ?? this.message,
        userId: userId ?? this.userId,
        phoneNumber: phoneNumber ?? this.phoneNumber,
      );

  // fetching data from CheckOTP API
  factory CheckOTPModel.fromMap(Mapper map) => CheckOTPModel(
        isLoggedIn: map['isLoggedIn'],
        message: map['message'].toString(),
        userId: map['userId'] ?? 0,
        phoneNumber: map['phoneNumber'].toString(),
      );

// Setting Data with API
  Mapper toMap() => {
        'isLoggedIn': isLoggedIn,
        'message': message,
        'userId': userId,
        'phoneNumber': phoneNumber,
      };
}
