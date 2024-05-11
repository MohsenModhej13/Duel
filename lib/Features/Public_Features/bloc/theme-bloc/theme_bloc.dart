import 'package:bloc/bloc.dart';
import 'package:duel/Core/Theme/app_theme.dart';
import 'package:duel/Core/Storage/shared_pref.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(CustomTheme.lightMode) {
    on<InitialThemeSetEvent>((event, emit) async {
      const hasDarkTheme = SharedPrefStorage.isDark;
      if (hasDarkTheme == SharedPrefStorage.isDark) {
        emit(CustomTheme.darkMode);
      } else {
        emit(CustomTheme.lightMode);
      }
    });
    on<ThemeSwitchEvent>((event, emit) {
      final isDark = state == CustomTheme.darkMode;
      emit(isDark ? CustomTheme.lightMode : CustomTheme.darkMode);
      SharedPrefStorage.setTheme(isDark);
    });
  }
}
