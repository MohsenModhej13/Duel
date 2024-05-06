import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:duel/Features/Auth_Features/repository/auth_repo.dart';
import 'package:meta/meta.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc(this.authRepo) : super(OtpInitial()) {
    on<CallOtpEvent>(callOTP);
  }

  final AuthRepository authRepo;

  FutureOr<void> callOTP(CallOtpEvent event, Emitter<OtpState> emit) async {
    emit(OtpLoading());

    try {
      final token = await authRepo.callAuthApi(event.phoneNumber);
      emit(OtpSuccess(token));
    } catch (e) {}
  }
}
