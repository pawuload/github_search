import 'package:github_search/app/app_config.dart';
import 'package:github_search/service/api/api_service.dart';
import 'package:github_search/service/api/client/api_client_service.dart';
import 'package:github_search/service/repository/repository_service.dart';
import 'package:injector/injector.dart';
import 'package:utopia_arch/utopia_arch.dart';

class AppInjector {
  const AppInjector._();

  static Injector setup() {
    final injector = Injector();
    injector
      ..registerSingleton(() => AppConfig.current)
      ..registerSingleton(ApiClientService.new)
      ..registerSingleton(() => ApiService(injector))
      ..registerSingleton(() => RepositoryService(injector.get()))
      ..registerSingleton(PreferencesService.new);
    return injector;
  }
}
