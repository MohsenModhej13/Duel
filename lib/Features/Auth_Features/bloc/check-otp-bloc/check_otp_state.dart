part of 'check_otp_bloc.dart';

abstract class CheckOTPState extends Equatable {
  const CheckOTPState();

  @override
  List<Object> get props => [];
}

class CheckOtpInitial extends CheckOTPState {}

class CheckOTPLoading extends CheckOTPState {}

class CheckOTPSuccess extends CheckOTPState {
  final CheckOTPModel model;

  const CheckOTPSuccess(this.model);

  @override
  List<Object> get props => [model];
}

class CheckOTPFailure extends CheckOTPState {}
