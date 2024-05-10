part of 'check_otp_bloc.dart';

abstract class CheckOtpEvent extends Equatable {
  const CheckOtpEvent();
}

class CallCheckOtpEvent extends CheckOtpEvent {
  final String phoneNumber;
  final String otpPassword;

  const CallCheckOtpEvent(this.phoneNumber, this.otpPassword);

  @override
  List<Object?> get props => [phoneNumber, otpPassword];
}
