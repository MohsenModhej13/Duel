part of 'explore_bloc.dart';

abstract class ExploreEvent extends Equatable {
  const ExploreEvent();
}

class FetchExploreEvent extends ExploreEvent {
  final String limit;

  const FetchExploreEvent(this.limit);

  @override
  List<Object?> get props => [limit];
}
