import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppPreferences extends Equatable {
  const AppPreferences({
    required this.themeData,
    required this.locale,
  });

  final ThemeData themeData;
  final Locale locale;

  @override
  List<Object> get props => [themeData, locale];

  AppPreferences copyWith({
    ThemeData? themeData,
    Locale? locale,
  }) {
    return AppPreferences(
      themeData: themeData ?? this.themeData,
      locale: locale ?? this.locale,
    );
  }

  @override
  String toString() => 'AppPreferences(themeData: $themeData, locale: $locale)';
}
