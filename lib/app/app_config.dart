class AppConfig {
  const AppConfig._({required this.apiBaseUrl});

  final String apiBaseUrl;

  static const dev = AppConfig._(apiBaseUrl: 'https://api.github.com/');

  static const all = {'dev': dev};

  static const _currentName = String.fromEnvironment('CONFIG', defaultValue: 'dev');

  static final AppConfig current = all[_currentName]!;
}
