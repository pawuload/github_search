import 'dart:async';

import 'package:dio/dio.dart';
import 'package:github_search/app/app_reporter.dart';
import 'package:utopia_rest/utopia_rest.dart';

class ApiClientService {
  ApiClientService();

  FutureOr<String?> Function()? tokenProvider;

  Dio createDio(String baseUrl, {String? apiKey}) {
    final options = UtopiaRest.standardDioOptions.copyWith(
      baseUrl: baseUrl,
      headers: {}, // workaround: see https://github.com/flutterchina/dio/issues/1133
    );
    final interceptors = [
      AuthTokenInterceptor(tokenProvider: () async => tokenProvider?.call()),
      ReporterInterceptor(appReporter),
    ];

    return Dio(options)..interceptors.addAll(interceptors);
  }
}
