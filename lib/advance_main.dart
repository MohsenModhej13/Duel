import 'package:duel/Core/Route/app_route.dart';
import 'package:duel/Core/Route/route_name.dart';
import 'package:duel/Features/Public_Features/bloc/theme-bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, state) {
        return MaterialApp(
          routes: appRoute,
          initialRoute: RouteName.splash,
          localizationsDelegates: localizations,
          supportedLocales: const [Locale('fa')],
          debugShowCheckedModeBanner: false,
          theme: state,
        );
      },
    );
  }

  Iterable<LocalizationsDelegate<dynamic>>? get localizations => const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ];
}
