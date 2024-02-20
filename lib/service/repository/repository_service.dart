import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:github_search/model/issue/issue.dart';
import 'package:github_search/model/pull/pull_request.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/service/api/api_service.dart';

class RepositoryService {
  const RepositoryService(this._apiService);

  final ApiService _apiService;

  Future<IList<Repository>> getRepos(String search) async {
    final response = await _apiService.fetchRepos(search);
    return response.items.toIList();
  }

  Future<IList<Issue>> getIssues(String repository) async {
    final response = await _apiService.fetchIssues(repository);
    return response.toIList();
  }

  Future<IList<PullRequest>> getPullRequests(String repository) async {
    final response = await _apiService.fetchPulls(repository);
    return response.toIList();
  }
}
