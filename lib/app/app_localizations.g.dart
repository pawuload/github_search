// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_localizations.dart';

// **************************************************************************
// SheetLocalizationGenerator
// **************************************************************************

final localizedLabels = <Locale, AppLocalizationsData>{
  Locale.fromSubtags(languageCode: 'en'): const AppLocalizationsData(
    pulls: const AppLocalizationsDataPulls(
      emptyList: 'No pull requests found',
      appbar: 'Pull Requests',
    ),
    issues: const AppLocalizationsDataIssues(
      emptyList: 'No issues found',
      appbar: 'Issues',
    ),
    home: const AppLocalizationsDataHome(
      search: 'Type to search',
      emptyList: 'Your search did not match any repositories',
      appbar: 'GitHub Search',
    ),
    error: const AppLocalizationsDataError(
      subtitle: 'Something gone wrong',
      title: 'Error',
    ),
    common: const AppLocalizationsDataCommon(
      ok: 'OK',
    ),
  ),
};

class AppLocalizationsData {
  const AppLocalizationsData({
    required this.pulls,
    required this.issues,
    required this.home,
    required this.error,
    required this.common,
  });

  final AppLocalizationsDataPulls pulls;
  final AppLocalizationsDataIssues issues;
  final AppLocalizationsDataHome home;
  final AppLocalizationsDataError error;
  final AppLocalizationsDataCommon common;
  factory AppLocalizationsData.fromJson(Map<String, Object?> map) =>
      AppLocalizationsData(
        pulls: AppLocalizationsDataPulls.fromJson(
            map['pulls']! as Map<String, Object?>),
        issues: AppLocalizationsDataIssues.fromJson(
            map['issues']! as Map<String, Object?>),
        home: AppLocalizationsDataHome.fromJson(
            map['home']! as Map<String, Object?>),
        error: AppLocalizationsDataError.fromJson(
            map['error']! as Map<String, Object?>),
        common: AppLocalizationsDataCommon.fromJson(
            map['common']! as Map<String, Object?>),
      );

  AppLocalizationsData copyWith({
    AppLocalizationsDataPulls? pulls,
    AppLocalizationsDataIssues? issues,
    AppLocalizationsDataHome? home,
    AppLocalizationsDataError? error,
    AppLocalizationsDataCommon? common,
  }) =>
      AppLocalizationsData(
        pulls: pulls ?? this.pulls,
        issues: issues ?? this.issues,
        home: home ?? this.home,
        error: error ?? this.error,
        common: common ?? this.common,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsData &&
          pulls == other.pulls &&
          issues == other.issues &&
          home == other.home &&
          error == other.error &&
          common == other.common);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      pulls.hashCode ^
      issues.hashCode ^
      home.hashCode ^
      error.hashCode ^
      common.hashCode;
}

class AppLocalizationsDataPulls {
  const AppLocalizationsDataPulls({
    required this.emptyList,
    required this.appbar,
  });

  final String emptyList;
  final String appbar;
  factory AppLocalizationsDataPulls.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataPulls(
        emptyList: map['emptyList']! as String,
        appbar: map['appbar']! as String,
      );

  AppLocalizationsDataPulls copyWith({
    String? emptyList,
    String? appbar,
  }) =>
      AppLocalizationsDataPulls(
        emptyList: emptyList ?? this.emptyList,
        appbar: appbar ?? this.appbar,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataPulls &&
          emptyList == other.emptyList &&
          appbar == other.appbar);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ emptyList.hashCode ^ appbar.hashCode;
}

class AppLocalizationsDataIssues {
  const AppLocalizationsDataIssues({
    required this.emptyList,
    required this.appbar,
  });

  final String emptyList;
  final String appbar;
  factory AppLocalizationsDataIssues.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataIssues(
        emptyList: map['emptyList']! as String,
        appbar: map['appbar']! as String,
      );

  AppLocalizationsDataIssues copyWith({
    String? emptyList,
    String? appbar,
  }) =>
      AppLocalizationsDataIssues(
        emptyList: emptyList ?? this.emptyList,
        appbar: appbar ?? this.appbar,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataIssues &&
          emptyList == other.emptyList &&
          appbar == other.appbar);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ emptyList.hashCode ^ appbar.hashCode;
}

class AppLocalizationsDataHome {
  const AppLocalizationsDataHome({
    required this.search,
    required this.emptyList,
    required this.appbar,
  });

  final String search;
  final String emptyList;
  final String appbar;
  factory AppLocalizationsDataHome.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataHome(
        search: map['search']! as String,
        emptyList: map['emptyList']! as String,
        appbar: map['appbar']! as String,
      );

  AppLocalizationsDataHome copyWith({
    String? search,
    String? emptyList,
    String? appbar,
  }) =>
      AppLocalizationsDataHome(
        search: search ?? this.search,
        emptyList: emptyList ?? this.emptyList,
        appbar: appbar ?? this.appbar,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataHome &&
          search == other.search &&
          emptyList == other.emptyList &&
          appbar == other.appbar);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      search.hashCode ^
      emptyList.hashCode ^
      appbar.hashCode;
}

class AppLocalizationsDataError {
  const AppLocalizationsDataError({
    required this.subtitle,
    required this.title,
  });

  final String subtitle;
  final String title;
  factory AppLocalizationsDataError.fromJson(Map<String, Object?> map) =>
      AppLocalizationsDataError(
        subtitle: map['subtitle']! as String,
        title: map['title']! as String,
      );

  AppLocalizationsDataError copyWith({
    String? subtitle,
    String? title,
  }) =>
      AppLocalizationsDataError(
        subtitle: subtitle ?? this.subtitle,
        title: title ?? this.title,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppLocalizationsDataError &&
          subtitle == other.subtitle &&
          title == other.title);
  @override
  int get hashCode => runtimeType.hashCode ^ subtitle.hashCode ^ title.hashCode;
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
