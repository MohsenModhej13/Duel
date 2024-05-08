import 'package:duel/Config/Constant/constants.dart';
import 'package:duel/Features/Home_Features/view/home_view.dart';
import 'package:duel/Features/Posts_Features/widget/add_post_button.dart';
import 'package:duel/Features/Public_Features/bloc/nav-cubit/navbar_cubit.dart';
import 'package:duel/Features/Public_Features/widget/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navBloc = BlocProvider.of<NavbarCubit>(context);
    return BlocBuilder<NavbarCubit, int>(
      builder: (context, state) => Scaffold(
        body: navScreen.elementAt(navBloc.selectedIndex),
        backgroundColor: Constants.theme(context).background,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: addPostButton(context),
        bottomNavigationBar: navBarItem(navBloc, context),
      ),
    );
  }

  List<Widget> get navScreen => [
        const HomeView(),
        Container(),
        Container(),
        Container(),
      ];
}
