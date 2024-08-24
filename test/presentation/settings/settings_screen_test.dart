import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:time_tracking_app/presentation/settings/bloc/settings_bloc.dart';
import 'package:time_tracking_app/presentation/settings/bloc/settings_bloc_state.dart';
import 'package:time_tracking_app/presentation/settings/settings_screen.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockSettingsBloc settingsBloc;

  setUp(() {
    settingsBloc = MockSettingsBloc();
  });

  tearDown(() {
    settingsBloc.close();
  });

  testWidgets('SettingsScreen widget test', (WidgetTester tester) async {
    when(settingsBloc.stream).thenAnswer((_) => const Stream.empty());

    final mockState = SettingsBlocState(locale: const Locale('ru', 'RU'), isDarkMode: false);
    when(settingsBloc.state).thenReturn(mockState);

    var supportedLocales = const [Locale('en', 'US'), Locale('de', 'DE'), Locale('ru', 'RU')];

    await tester.pumpWidget(
      EasyLocalization(
        supportedLocales: supportedLocales,
        path: 'assets/translations',
        fallbackLocale: const Locale('en', 'US'),
        startLocale: const Locale('en', 'US'),
        child: ScreenUtilInit(
          designSize: const Size(375, 667),
          builder: (context, child) {
            return BlocProvider<SettingsBloc>(
              create: (context)=> settingsBloc,
              child: const MaterialApp(
                home: SettingsScreen(),
              ),
            );
          },
        ),
      ),
    );

    final dropdownFinder = find.byType(DropdownButton<Locale>);
    expect(dropdownFinder, findsOneWidget);

    await tester.tap(dropdownFinder);
    await tester.pumpAndSettle();

    for (var locale in supportedLocales) {
      expect(find.text(locale.languageCode.toUpperCase()), findsAtLeast(1));
    }

    var dropDownMenuItem = find.byType(DropdownMenuItem<Locale>);
    expect(dropDownMenuItem, findsExactly(4)); // 3 overlay item and 1 current selected
  });
}