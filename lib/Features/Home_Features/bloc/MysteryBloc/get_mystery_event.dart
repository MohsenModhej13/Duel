part of 'get_mystery_bloc.dart';

abstract class GetMysteryEvent extends Equatable {
  const GetMysteryEvent();
}

class CallMysteryEvent extends GetMysteryEvent {
  final String limit;

  const CallMysteryEvent( this.limit);

  @override
  List<Object?> get props => [ limit];
}
