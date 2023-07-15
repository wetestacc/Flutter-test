import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../close_app/close_app.dart';
import '../home/home.dart';
import '../splash/splash.dart';
import 'bloc/app_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state.hasError) {
            return MaterialApp(
              title: 'Flutter Test',
              locale: state.appPreferences.locale,
              theme: state.appPreferences.themeData,
              home: const CloseApp(),
            );
          } else if (state.isLoading) {
            return MaterialApp(
              title: 'Flutter Test',
              locale: state.appPreferences.locale,
              theme: state.appPreferences.themeData,
              home: const Splash(),
            );
          } else {
            return MaterialApp(
              title: 'Flutter Test',
              locale: state.appPreferences.locale,
              theme: state.appPreferences.themeData,
              home: const Home(),
            );
          }
        },
      ),
    );
  }
}
