// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_localizations.dart';

// **************************************************************************
// SheetLocalizationGenerator
// **************************************************************************

final localizedLabels = <Locale, AppLocalizationsData>{
  Locale.fromSubtags(languageCode: 'en'): const AppLocalizationsData(
    common: const AppLocalizationsDataCommon(
      ok: 'OK',
    ),
  ),
};

class AppLocalizationsData {
  const AppLocalizationsData({
    required this.common,
  });

  final AppLocalizationsDataCommon common;
  factory AppLocalizationsData.fromJson(Map<String, Object?> map) =>
      AppLocalizationsData(
        common: AppLocalizationsDataCommon.fromJson(
            map['common']! as Map<String, Object?>),
      );

  AppLocalizationsData copyWith({
    AppLocalizationsDataCommon? common,
  }) =>
      AppLocalizationsData(
        common: common ?? this.common,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsData && common == other.common);
  @override
  int get hashCode => runtimeType.hashCode ^ common.hashCode;
}

class AppLocalizationsDataCommon {
  const AppLocalizationsDataCommon({
    required this.ok,
  });

  final String ok;
  factory AppLocalizationsDataCommon.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataCommon(
        ok: map['ok']! as String,
      );

  AppLocalizationsDataCommon copyWith({
    String? ok,
  }) =>
      AppLocalizationsDataCommon(
        ok: ok ?? this.ok,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataCommon && ok == other.ok);
  @override
  int get hashCode => runtimeType.hashCode ^ ok.hashCode;
}
