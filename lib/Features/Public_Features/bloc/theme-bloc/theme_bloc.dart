import 'package:bloc/bloc.dart';
import 'package:duel/Core/Theme/app_theme.dart';
import 'package:duel/Features/Public_Features/bloc/theme-bloc/theme_helper.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(CustomTheme.lightMode) {
    on<InitialThemeSetEvent>((event, emit) async {
      final hasDarkTheme = await isDark();
      if (hasDarkTheme) {
        emit(CustomTheme.darkMode);
      } else {
        emit(CustomTheme.lightMode);
      }
    });
    on<ThemeSwitchEvent>((event, emit) {
      final isDark = state == CustomTheme.darkMode;
      emit(isDark ? CustomTheme.lightMode : CustomTheme.darkMode);
      setTheme(isDark);
    });
  }
}
