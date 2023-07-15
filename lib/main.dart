import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/app/app.dart';
import 'services/bloc_observer.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const App());
}
