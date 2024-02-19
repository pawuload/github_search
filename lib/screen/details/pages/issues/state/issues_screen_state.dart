import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:github_search/model/issue/issue.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/service/repository/repository_service.dart';
import 'package:utopia_arch/utopia_arch.dart';

class IssuesPageState {
  final IList<Issue> issueList;
  final bool isLoading;

  const IssuesPageState({
    required this.issueList,
    required this.isLoading,
  });
}

IssuesPageState useIssuesPageState({
  required Repository args,
}) {
  final repositoryService = useInjected<RepositoryService>();

  final state = useAutoComputedState(() async => repositoryService.getIssues(args.fullName));

  return IssuesPageState(
    issueList: state.valueOrNull ?? IList(),
    isLoading: state.value is ComputedStateValueInProgress,
  );
}
