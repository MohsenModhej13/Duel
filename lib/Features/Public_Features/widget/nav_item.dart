import 'package:duel/Core/Components/my_icon_button.dart';
import 'package:duel/Core/gen/assets.gen.dart';
import 'package:duel/Features/Public_Features/bloc/nav-cubit/navbar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget navBarItem(ColorScheme theme, NavbarCubit navBloc) {
  return BottomAppBar(
    height: Adaptive.h(0.21.dp),
    surfaceTintColor: theme.background,
    color:
        theme.brightness == Brightness.light ? Colors.white : theme.background,
    notchMargin: 6,
    shape: const CircularNotchedRectangle(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyIconButton(
          icon: Image.asset(
            'assets/Icons/home.png',
            color: navBloc.selectedIndex == 0 ? Colors.blue : Colors.grey,
            fit: BoxFit.contain,
            width: 28,
          ),
          onPressed: () => navBloc.onIndexTap(0),
        ),
        MyIconButton(
          icon: Assets.icons.search.image(
            color: navBloc.selectedIndex == 1 ? Colors.blue : Colors.grey,
            fit: BoxFit.contain,
            width: 28,
          ),
          onPressed: () => navBloc.onIndexTap(1),
        ),
        const SizedBox(width: 20), // Space for FAB
        MyIconButton(
          icon: Assets.icons.monitor.image(
            color: navBloc.selectedIndex == 2 ? Colors.blue : Colors.grey,
            fit: BoxFit.contain,
            width: 28,
          ),
          onPressed: () => navBloc.onIndexTap(2),
        ),
        MyIconButton(
          icon: Assets.icons.game.image(
            color: navBloc.selectedIndex == 3 ? Colors.blue : Colors.grey,
            fit: BoxFit.contain,
            width: 28,
          ),
          onPressed: () => navBloc.onIndexTap(3),
        ),
      ],
    ),
  );
}
