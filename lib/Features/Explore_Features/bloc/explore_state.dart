part of 'explore_bloc.dart';

abstract class ExploreState extends Equatable {
  const ExploreState();

  @override
  List<Object> get props => [];
}

class ExploreInitial extends ExploreState {}

class ExploreLoading extends ExploreState {}

class ExploreSuccess extends ExploreState {
  final List<Mystery> mysteries;

  const ExploreSuccess({required this.mysteries});

  @override
  List<Object> get props => [mysteries];
}

class ExploreFailure extends ExploreState {}
