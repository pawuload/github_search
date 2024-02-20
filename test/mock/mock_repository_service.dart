import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:github_search/model/issue/issue.dart';
import 'package:github_search/model/pull/pull_request.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/service/repository/repository_service.dart';

class MockRepositoryService implements RepositoryService {
  static const repositories = IListConst<Repository>([
    Repository(fullName: 'repository1', description: 'desc', language: 'flutter'),
    Repository(fullName: 'repository2', description: 'desc', language: 'flutter'),
    Repository(fullName: 'repository2', description: 'desc', language: 'flutter'),
  ]);

  static const issues = IListConst<Issue>([
    Issue(title: 'issue1', number: 1),
    Issue(title: 'issue2', number: 2),
    Issue(title: 'issue3', number: 3),
  ]);

  static const pulls = IListConst<PullRequest>([
    PullRequest(title: 'pull1', number: 1),
    PullRequest(title: 'pull2', number: 2),
    PullRequest(title: 'pull3', number: 3),
  ]);

  @override
  Future<IList<Repository>> getRepos(String search) async => repositories;

  @override
  Future<IList<Issue>> getIssues(String repository) async => issues;

  @override
  Future<IList<PullRequest>> getPullRequests(String repository) async => pulls;
}
