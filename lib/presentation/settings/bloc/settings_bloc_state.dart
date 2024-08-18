import 'package:flutter/material.dart';

class SettingsBlocState {
  final Locale locale;
  final bool isDarkMode;

  SettingsBlocState({required this.locale, required this.isDarkMode});

  SettingsBlocState copyWith({
    Locale? locale,
    bool? isDarkMode,
  }) {
    return SettingsBlocState(
      locale: locale ?? this.locale,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
