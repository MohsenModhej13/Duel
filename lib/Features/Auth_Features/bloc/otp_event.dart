part of 'otp_bloc.dart';

@immutable
abstract class OtpEvent {}

class CallOtpEvent extends OtpEvent {
  CallOtpEvent({required this.phoneNumber});

  final String phoneNumber;
}
