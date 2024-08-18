import 'package:flutter_test/flutter_test.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockSettingsBloc settingsBloc;

  setUp(() {
    settingsBloc = MockSettingsBloc();
  });

  tearDown(() {
    settingsBloc.close();
  });

  // testWidgets('SettingsScreen widget test', (WidgetTester tester) async {
  //   when(settingsBloc.stream).thenAnswer((_) => const Stream.empty());
  //
  //   final mockState = SettingsBlocState(locale: const Locale('en'), isDarkMode: false);
  //   when(settingsBloc.state).thenReturn(mockState);
  //
  //   await tester.pumpWidget(
  //     EasyLocalization(
  //       supportedLocales: const [Locale('en', 'US'), Locale('de', 'DE'), Locale('ru', 'RU')],
  //       path: 'assets/translations',
  //       fallbackLocale: const Locale('en', 'US'),
  //       child: Builder(
  //         builder: (context) {
  //           // Initialize locale before passing it to MaterialApp
  //           context.setLocale(mockState.locale);
  //
  //           return ScreenUtilInit(
  //             designSize: const Size(375, 667),
  //             builder: (context, child) {
  //               return BlocProvider<SettingsBloc>.value(
  //                 value: settingsBloc,
  //                 child: MaterialApp(
  //                   locale: mockState.locale,
  //                   home: const SettingsScreen(),
  //                 ),
  //               );
  //             },
  //           );
  //         },
  //       ),
  //     ),
  //   );
  //
  //   await tester.pumpAndSettle();
  // });
}