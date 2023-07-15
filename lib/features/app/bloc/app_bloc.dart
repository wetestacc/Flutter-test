import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/app_container.dart';
import '../../../models/app_preferences.dart';
import '../../../repositories/app.dart';
import '../../../repositories/user.dart';
import '../../../services/user.dart';
import '../../../utils/const.dart';

part 'app_events.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(
          AppState(
            container: AppContainer(
              appRepository: AppRepository(),
              userRepository: UserRepository(userService: UserService()),
            ),
            appPreferences: AppPreferences(
              locale: kInitialLocale,
              themeData: kLightThemeData,
            ),
            isLoading: false,
            hasError: false,
          ),
        ) {
    on<AppReInitialize>(_onAppReInitialize);
    on<AppThemeSwitch>(_onAppThemeSwitch);
  }

  Future<void> _onAppReInitialize(AppReInitialize event, Emitter<AppState> emit) async {
    emit(state.copyWith(isLoading: true));
    final AppContainer container = AppContainer(
      appRepository: AppRepository(),
      userRepository: UserRepository(userService: UserService()),
    );
    emit(state.copyWith(container: container, isLoading: false));
  }

  Future<void> _onAppThemeSwitch(AppThemeSwitch event, Emitter<AppState> emit) async {
    emit(state.copyWith(isLoading: true));
    final AppPreferences appPreferences = state.appPreferences.copyWith(themeData: kDarkThemeData);
    emit(state.copyWith(appPreferences: appPreferences, isLoading: false));
  }
}
