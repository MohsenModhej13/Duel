import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:duel/Features/Auth_Features/model/check_otp_model.dart';
import 'package:duel/Features/Auth_Features/repository/check_otp_repo.dart';
import 'package:equatable/equatable.dart';

part 'check_otp_event.dart';
part 'check_otp_state.dart';

class CheckOTPBloc extends Bloc<CheckOtpEvent, CheckOtpState> {
  final CheckOTPRepo otpRepo;

  CheckOTPBloc(this.otpRepo) : super(CheckOtpInitial()) {
    on<CallCheckOtpEvent>(callCheckOTP);
  }

  FutureOr<void> callCheckOTP(CallCheckOtpEvent event, Emitter<CheckOtpState> emit) async {
    emit(CheckOtpLoading());
    print("event: $event");
    try {
      final CheckOTPModel result = await otpRepo.callCheckOTP(
        event.phoneNumber,
        event.otpPassword,
      );
      print("result: $result");
      if (result.isLoggedIn == true) {

        emit(
          CheckOtpSuccess(result),
        );
      } else {
        emit(CheckOtpFailure());
      }
    } catch (e) {
      e.toString();
    }
  }
}
