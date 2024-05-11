part of 'get_mystery_bloc.dart';

sealed class GetMysteryState extends Equatable {
  const GetMysteryState();

  @override
  List<Object> get props => [];
}

class GetMysteryInitial extends GetMysteryState {}

class GetMysteryLoading extends GetMysteryState {}

class GetMysterySuccess extends GetMysteryState {
  final List<Mystery> mysteries;

  const GetMysterySuccess({required this.mysteries});

  @override
  List<Object> get props => [mysteries];
}

class GetMysteryFailure extends GetMysteryState {}
