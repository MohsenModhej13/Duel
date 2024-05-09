import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:duel/Features/Auth_Features/repository/check_otp_repo.dart';
import 'package:equatable/equatable.dart';

import 'check_otp_bloc.dart';

part 'check_otp_event.dart';

part 'check_otp_state.dart';

// class CheckOTPBLoC {
//
//   final StreamController<CheckOTPEvent> eventCTRL =
//   StreamController<CheckOTPEvent>.broadcast();
//
//   final StreamController<CheckOTPState> stateCTRL =
//   StreamController<CheckOTPState>.broadcast();
//
//   Sink<CheckOTPEvent> get eventSink => eventCTRL.sink;
//
//   Stream<CheckOTPState> get stateStream => stateCTRL.stream;
//
//   // instance of Check OTP Repository
//   final CheckOTPRepo otpRepo;
//
//   CheckOTPBLoC(this.otpRepo) {
//     eventCTRL.stream.listen((event) => mapEventToState(event));
//   }
//
//   void mapEventToState(CheckOTPEvent event) async {
//     switch (event) {
//       case CheckOTPEvent.checkOTP:
//         (stateCTRL.add(CheckOTPState.loading));
//         await Future.delayed(const Duration(milliseconds: 1200));
//         if (event is ) {
//           stateCTRL.add(CheckOTPState.success);
//         } else {
//           stateCTRL.add(CheckOTPState.failure);
//         }
//         break;
//       case CheckOTPEvent.resendOTP:
//       // Simulate OTP resend (replace with your actual logic)
//         await Future.delayed(const Duration(seconds: 2));
//         print('OTP resent'); // Handle resent message in UI
//         break;
//       default:
//         throw Exception('Unexpected event: $event');
//     }
//   }
//
//   void dispose() {
//     eventCTRL.close();
//     stateCTRL.close();
//   }
// }

class CheckOTPBloc extends Bloc<CheckOTPEvent, CheckOTPState> {
  final CheckOTPRepo otpRepo;

  CheckOTPBloc(this.otpRepo) : super(CheckOtpInitial()) {
    on<CheckOTPEvent>(callCheckOTP);
  }

  FutureOr<void> callCheckOTP(
      CheckOTPEvent event, Emitter<CheckOTPState> emit) {
    emit(CheckOTPLoading());

    try {
      final otpToken = otpRepo.callCheckOTP(
        event.phoneNumber,
        event.otpPassword,
      );
      // emit(CheckOTPSuccess(token:otpToken));
    } catch (e) {}
  }
}
