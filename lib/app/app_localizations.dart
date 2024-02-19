import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sheet_localization/flutter_sheet_localization.dart';

part 'app_localizations.g.dart';

//localizations sheet
//https://docs.google.com/spreadsheets/d/1sNZyzLL7i0ta8MYkzX7ybX7TIQfOI0pINKeLiroHBNY/edit#gid=0
@SheetLocalization("1sNZyzLL7i0ta8MYkzX7ybX7TIQfOI0pINKeLiroHBNY", "0", 3)
class AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizationsData> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => localizedLabels.containsKey(locale);

  @override
  Future<AppLocalizationsData> load(Locale locale) =>
      SynchronousFuture<AppLocalizationsData>(localizedLabels[locale]!);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
