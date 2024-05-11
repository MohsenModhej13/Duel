import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:duel/Core/Storage/models/ViewModel/Mystery.dart';
import 'package:duel/Features/Home_Features/repository/get_mystery_repo.dart';
import 'package:equatable/equatable.dart';

part 'explore_event.dart';

part 'explore_state.dart';

class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  final GetMysteryRepo mysteryRepo;

  ExploreBloc(this.mysteryRepo) : super(ExploreInitial()) {
    on<FetchExploreEvent>(exploreEvent);
  }

  FutureOr<void> exploreEvent(
      FetchExploreEvent event, Emitter<ExploreState> emit) async {
    emit(ExploreLoading());

    try {
      final exploreData = await mysteryRepo.getMystery(event.limit);
    } catch (e) {
      print(e.toString());
    }
  }
}
