import 'package:dio/dio.dart';
import 'package:github_search/app/app_config.dart';
import 'package:github_search/model/api/api_response.dart';
import 'package:github_search/model/issue/issue.dart';
import 'package:github_search/model/pull/pull_request.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:injector/injector.dart';
import 'package:retrofit/http.dart';

import 'client/api_client_service.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Injector injector) => _ApiService(injector<ApiClientService>().createDio(injector<AppConfig>().apiBaseUrl));

  @GET('/search/repositories?q={search}')
  Future<ApiResponse<List<Repository>>> fetchRepos(@Path() String search);

  @GET('/repos/{repository}/issues')
  Future<List<Issue>> fetchIssues(@Path() String repository);

  @GET('/repos/{repository}/pulls')
  Future<List<PullRequest>> fetchPulls(@Path() String repository);
}
