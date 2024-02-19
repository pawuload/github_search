import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:github_search/model/pull/pull_request.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/service/repository/repository_service.dart';
import 'package:utopia_arch/utopia_arch.dart';

class PullsPageState {
  final IList<PullRequest> pullList;
  final bool isLoading;

  const PullsPageState({
    required this.pullList,
    required this.isLoading,
  });
}

PullsPageState usePullsPageState({
  required Repository args,
}) {
  final repositoryService = useInjected<RepositoryService>();

  final state = useAutoComputedState(() async => repositoryService.getPullRequests(args.fullName));

  return PullsPageState(
    pullList: state.valueOrNull ?? IList(),
    isLoading: state.value is ComputedStateValueInProgress,
  );
}
