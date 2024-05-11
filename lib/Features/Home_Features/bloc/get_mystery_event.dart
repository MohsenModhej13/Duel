part of 'get_mystery_bloc.dart';

abstract class GetMysteryEvent extends Equatable {
  const GetMysteryEvent();
}

class CallMysteryEvent extends GetMysteryEvent {
  final String userId;
  final String limit;

  CallMysteryEvent(this.userId, this.limit);

  @override
  List<Object?> get props => [userId, limit];
}
