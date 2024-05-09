part of 'send_otp_bloc.dart';

@immutable
abstract class SendOTPState {}

class SendOTPInitial extends SendOTPState {}

class SendOTPLoading extends SendOTPState {}

class SendOTPSuccess extends SendOTPState {
  SendOTPSuccess(this.token);

  final String token;
}

class SendOTPFailure extends SendOTPState {}
