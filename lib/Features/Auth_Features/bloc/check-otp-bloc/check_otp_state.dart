part of 'check_otp_bloc.dart';

abstract class CheckOTPState extends Equatable {
  const CheckOTPState();

  @override
  List<Object> get props => [];
}

class CheckOtpInitial extends CheckOTPState {}

class CheckOTPLoading extends CheckOTPState {}

class CheckOTPSuccess extends CheckOTPState {
  final String token;

  const CheckOTPSuccess({required this.token});

  @override
  List<Object> get props => [token];
}

class CheckOTPFailure extends CheckOTPState {}
