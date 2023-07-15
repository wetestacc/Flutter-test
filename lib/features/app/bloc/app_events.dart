part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class AppReInitialize extends AppEvent {}

final class AppThemeSwitch extends AppEvent {}
