part of 'check_otp_bloc.dart';

abstract class CheckOtpState extends Equatable {
  const CheckOtpState();

  @override
  List<Object> get props => [];
}

class CheckOtpInitial extends CheckOtpState {}

class CheckOtpLoading extends CheckOtpState {}

class CheckOtpSuccess extends CheckOtpState {
  final String otpCode;

  const CheckOtpSuccess(this.otpCode);

  @override
  List<Object> get props => [otpCode];
}

class CheckOtpFailure extends CheckOtpState {}
