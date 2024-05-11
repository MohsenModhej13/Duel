import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:duel/Core/Storage/models/ViewModel/Mystery.dart';
import 'package:duel/Features/Home_Features/repository/get_mystery_repo.dart';
import 'package:equatable/equatable.dart';

part 'get_mystery_event.dart';

part 'get_mystery_state.dart';

class GetMysteryBloc extends Bloc<GetMysteryEvent, GetMysteryState> {
  final GetMysteryRepo mysteryRepo;

  GetMysteryBloc(this.mysteryRepo) : super(GetMysteryInitial()) {
    on<CallMysteryEvent>(callMysteries);
  }

  FutureOr<void> callMysteries(
      CallMysteryEvent event, Emitter<GetMysteryState> emit) async {
    emit(GetMysteryLoading());

    try {
      final mysteryData = await mysteryRepo.getMystery(event.limit);

      emit(GetMysterySuccess(mysteries: mysteryData));
    } catch (e) {}
  }
}
