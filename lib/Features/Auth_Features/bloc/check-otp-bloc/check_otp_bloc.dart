import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../repository/check_otp_repo.dart';

part 'check_otp_event.dart';
part 'check_otp_state.dart';

class CheckOtpBloc extends Bloc<CheckOtpEvent, CheckOtpState> {
  final CheckOTPRepo otpRepo;
  CheckOtpBloc(this.otpRepo) : super(CheckOtpInitial()) {
    on<CallCheckOtp>(callCheckOTP);
  }

  FutureOr<void> callCheckOTP(
      CallCheckOtp event, Emitter<CheckOtpState> emit) async {
    // App is Loading
    emit(CheckOtpLoading());

    try {
      final otpData =
          await otpRepo.callCheckOTP(event.phoneNumber, event.otpPassword);
      emit(
        CheckOtpSuccess(otpData.toString()),
      );
    } catch (e) {
      print(e.toString());
    }
  }
}
