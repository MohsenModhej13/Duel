part of 'check_otp_bloc.dart';

abstract class CheckOtpState extends Equatable {
  const CheckOtpState();

  @override
  List<Object> get props => [];
}

class CheckOtpInitial extends CheckOtpState {}

class CheckOtpLoading extends CheckOtpState {}

class CheckOtpSuccess extends CheckOtpState {
  final CheckOTPModel model;

  const CheckOtpSuccess(this.model);

  @override
  List<Object> get props => [model];
}

class CheckOtpFailure extends CheckOtpState {}
