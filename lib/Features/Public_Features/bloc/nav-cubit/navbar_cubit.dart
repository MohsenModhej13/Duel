import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navbar_state.dart';

class NavbarCubit extends Cubit<int> {
  NavbarCubit() : super(0);

  int selectedIndex = 0;

  void onIndexTap(int index) {
    emit(selectedIndex = index);
  }
}
