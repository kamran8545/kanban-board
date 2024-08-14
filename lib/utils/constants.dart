import 'package:time_tracking_app/translations/locale_keys.g.dart';

class AppConstants {
  static const String kProjectId = '2337579550';

  static const kTaskLabelList = <String>[
    LocaleKeys.to_do_label,
    LocaleKeys.in_progress_label,
    LocaleKeys.done_label,
  ];

  static const String kNoInternet = 'No Internet';
  static const String kSomethingWentWrong = 'Something went wrong!';
}
