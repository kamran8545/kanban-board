dart run easy_localization:generate -S 'assets/translations/' -O 'lib/translations/'

dart run easy_localization:generate -S 'assets/translations' -O 'lib/translations/' -o 'locale_keys.g.dart' -f keys

dart run build_runner build