import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../translations/locale_keys.g.dart';
import '../../utils/app_theme.dart';
import '../create_task/widgets/decorated_container.dart';
import 'bloc/settings_bloc.dart';
import 'bloc/settings_bloc_event.dart';
import 'bloc/settings_bloc_state.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsBlocState>(
      builder: (context, state) {
        final themeData = state.isDarkMode ? AppTheme.darkTheme() : AppTheme.lightTheme();
        final supportedLocales = EasyLocalization.of(context)!.supportedLocales;

        return Scaffold(
          backgroundColor: themeData.scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: themeData.primaryColorLight,
            centerTitle: true,
            title: Text(
              LocaleKeys.settings.tr(),
              style: themeData.textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppTheme.horizontalPadding.w,
                vertical: AppTheme.verticalPadding.h,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Column(
                  children: [
                    SwitchListTile(
                      activeColor: themeData.shadowColor,
                      activeTrackColor: themeData.shadowColor.withOpacity(0.7),
                      title: Text(LocaleKeys.enable_dark_mode.tr()),
                      value: state.isDarkMode,
                      onChanged: (bool value) {
                        context.read<SettingsBloc>().add(ThemeSwitchedEvent(value));
                      },
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: DecoratedContainer(
                        child: DropdownButton<Locale>(
                          underline: const SizedBox.shrink(),
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
                          isExpanded: true,
                          value: state.locale,
                          onChanged: (Locale? newLocale) {
                            if (newLocale != null) {
                              context.setLocale(newLocale);
                              context.read<SettingsBloc>().add(LocaleChangedEvent(newLocale));
                            }
                          },
                          items: supportedLocales.map((locale) {
                            return DropdownMenuItem<Locale>(
                              value: locale,
                              child: Text(locale.languageCode.toUpperCase()),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
