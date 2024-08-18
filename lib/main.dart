import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_tracking_app/presentation/create_task/bloc/create_task_bloc/create_task_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_bloc.dart';
import 'package:time_tracking_app/presentation/home/bloc/get_all_tasks_bloc/get_all_tasks_event.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:time_tracking_app/presentation/settings/bloc/settings_bloc.dart';
import 'package:time_tracking_app/presentation/settings/bloc/settings_bloc_state.dart';
import 'package:time_tracking_app/presentation/update_task/bloc/update_task_bloc/update_task_bloc.dart';
import 'package:time_tracking_app/translations/locale_keys.g.dart';
import 'package:time_tracking_app/utils/app_routes.dart';
import 'package:time_tracking_app/utils/app_theme.dart';
import 'package:time_tracking_app/utils/constants.dart';

import 'app_bloc_observer.dart';
import 'core/dependency_injection.dart';

Future<void> main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initializeDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('de', 'DE'), Locale('ru', 'RU')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final initialLocale = EasyLocalization.of(context)!.locale;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ScreenUtilInit(
       designSize: MediaQuery.sizeOf(context),
    builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<CreateTaskBloc>(
              create: (_) => sl<CreateTaskBloc>(),
            ),
            BlocProvider<GetAllTasksBloc>(
              create: (_) => sl<GetAllTasksBloc>()
                ..add(
                  const GetAllTasksEvent(projectId: AppConstants.kProjectId),
                ),
            ),
            BlocProvider<UpdateTaskBloc>(
              create: (_) => sl<UpdateTaskBloc>(),
            ),
            BlocProvider(
              create: (context) => SettingsBloc(initialLocale, isDarkMode),
            )
          ],
          child: BlocBuilder<SettingsBloc, SettingsBlocState>(
            builder: (context, state) {
              final themeData = state.isDarkMode ? AppTheme.darkTheme() : AppTheme.lightTheme();

              return MaterialApp.router(
                title: LocaleKeys.project_title.tr(),
                debugShowCheckedModeBanner: false,
                localizationsDelegates: EasyLocalization.of(context)!.delegates,
                supportedLocales: EasyLocalization.of(context)!.supportedLocales,
                locale: state.locale,
                theme: themeData,
                themeMode: ThemeMode.system,
                routerConfig: AppRoutes.router,
              );
            }
          ),
        );
      }
    );
  }
}
