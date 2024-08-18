import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'settings_bloc_event.dart';
import 'settings_bloc_state.dart';

class SettingsBloc extends Bloc<SettingsBlocEvent, SettingsBlocState> {
  SettingsBloc(Locale initialLocale, bool initialIsDarkMode)
      : super(SettingsBlocState(locale: initialLocale, isDarkMode: initialIsDarkMode)) {
    on<ThemeSwitchedEvent>((event, emit) {
      emit(state.copyWith(isDarkMode: event.isDarkMode));
    });

    on<LocaleChangedEvent>((event, emit) {
      emit(state.copyWith(locale: event.locale));
    });
  }
}
