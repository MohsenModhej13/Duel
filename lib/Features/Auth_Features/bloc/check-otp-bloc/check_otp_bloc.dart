import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:duel/Features/Auth_Features/model/check_otp_model.dart';
import 'package:duel/Features/Auth_Features/repository/check_otp_repo.dart';
import 'package:equatable/equatable.dart';

part 'check_otp_event.dart';
part 'check_otp_state.dart';

class CheckOTPBloc extends Bloc<CheckOTPEvent, CheckOTPState> {
  final CheckOTPRepo otpRepo;

  CheckOTPBloc(this.otpRepo) : super(CheckOtpInitial()) {
    on<CheckOTPEvent>(callCheckOTP);
  }

  FutureOr<void> callCheckOTP(
      CheckOTPEvent event, Emitter<CheckOTPState> emit) async {
    emit(CheckOTPLoading());

    try {
      final CheckOTPModel result = await otpRepo.callCheckOTP(
        event.phoneNumber,
        event.otpPassword,
      );
      if (result.isLoggedIn == true) {
        emit(
          CheckOTPSuccess(result),
        );
      } else {
        emit(CheckOTPFailure());
      }
    } catch (e) {
      e.toString();
    }
  }
}
