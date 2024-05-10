import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:duel/Features/Auth_Features/repository/send_otp_repo.dart';
import 'package:meta/meta.dart';

part 'send_otp_event.dart';
part 'send_otp_state.dart';

class SendOTPBloc extends Bloc<OtpEvent, SendOTPState> {
  SendOTPBloc(this.authRepo) : super(SendOTPInitial()) {
    on<CallOtpEvent>(callOTP);
  }

  final SendOTPRepo authRepo;

  FutureOr<void> callOTP(CallOtpEvent event, Emitter<SendOTPState> emit) async {
    emit(SendOTPLoading());

    try {
      final token = await authRepo.callSendOtpApi(event.phoneNumber);
      emit(SendOTPSuccess(token));
    } catch (e) {}
  }
}
