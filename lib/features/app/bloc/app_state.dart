part of 'app_bloc.dart';

final class AppState extends Equatable {
  const AppState({
    required this.container,
    required this.appPreferences,
    required this.isLoading,
    required this.hasError,
    this.isErrorCritical = false,
    this.error,
  });

  final AppContainer container;
  final AppPreferences appPreferences;

  final bool isLoading;
  final bool hasError;
  final bool isErrorCritical;
  final String? error;

  AppState copyWith({
    AppContainer? container,
    AppPreferences? appPreferences,
    bool? isLoading,
    bool? hasError,
    bool? isErrorCritical,
    String? error,
  }) {
    return AppState(
      container: container ?? this.container,
      appPreferences: appPreferences ?? this.appPreferences,
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      isErrorCritical: isErrorCritical ?? this.isErrorCritical,
      error: error ?? this.error,
    );
  }

  @override
  String toString() {
    return 'AppState(container: $container, appPreferences: $appPreferences, isLoading: $isLoading, hasError: $isErrorCritical, hasError: $isErrorCritical, error: $error)';
  }

  @override
  List<Object> get props => [container, appPreferences, isLoading, hasError, isErrorCritical];
}
