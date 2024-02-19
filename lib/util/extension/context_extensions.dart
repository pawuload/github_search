import 'package:github_search/app/app_localizations.dart';
import 'package:flutter/widgets.dart';
import 'package:github_search/app/global_state/theme/theme_state.dart';
import 'package:github_search/common/constant/app_colors.dart';
import 'package:github_search/common/constant/app_texts.dart';
import 'package:utopia_arch/utopia_arch.dart';

extension AppContextExtensions on BuildContext {
  AppLocalizationsData get strings => Localizations.of(this, AppLocalizationsData)!;

  ThemeState get theme => get<ThemeState>();

  AppColors get colors => theme.colors;

  AppTexts get texts => theme.texts;
}
