part of 'check_otp_bloc.dart';

abstract class CheckOtpEvent extends Equatable {
  const CheckOtpEvent();
}

class CallCheckOtp extends CheckOtpEvent {
  final String phoneNumber;
  final String otpPassword;

  const CallCheckOtp(this.phoneNumber, this.otpPassword);

  @override
  List<Object?> get props => [phoneNumber, otpPassword];
}
