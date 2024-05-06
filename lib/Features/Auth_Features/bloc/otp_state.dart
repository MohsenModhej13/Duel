part of 'otp_bloc.dart';

@immutable
abstract class OtpState {}

class OtpInitial extends OtpState {}

class OtpLoading extends OtpState {}

class OtpSuccess extends OtpState {
  OtpSuccess(this.token);

  final String token;
}

class OtpFailure extends OtpState {}
