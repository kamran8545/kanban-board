import 'package:flutter/material.dart';

abstract class SettingsBlocEvent {}

class ThemeSwitchedEvent extends SettingsBlocEvent {
  final bool isDarkMode;

  ThemeSwitchedEvent(this.isDarkMode);
}

class LocaleChangedEvent extends SettingsBlocEvent {
  final Locale locale;

  LocaleChangedEvent(this.locale);
}
