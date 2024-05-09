part of 'check_otp_bloc.dart';

class CheckOTPEvent extends Equatable {
  final String phoneNumber;
  final String otpPassword;

  const CheckOTPEvent(
    this.phoneNumber,
    this.otpPassword,
  );

  @override
  // TODO: implement props
  List<Object?> get props => [phoneNumber, otpPassword];
}
