import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/screen/details/pages/issues/state/issues_screen_state.dart';
import 'package:github_search/service/repository/repository_service.dart';
import 'package:injector/injector.dart';
import 'package:utopia_arch/utopia_arch.dart';

import '../mock/mock_repository_service.dart';

void main() {
  group("IssuesScreenState tests", () {
    late SimpleHookProviderContainer container;
    late IssuesPageState Function() state;

    setUp(() {
      final injector = Injector();
      injector.registerSingleton<RepositoryService>(() => MockRepositoryService());
      container = SimpleHookProviderContainer({
        Injector: () => injector,
        IssuesPageState: () => useIssuesPageState(args: MockRepositoryService.repositories[0]),
      });
      state = () => container<IssuesPageState>();
    });

    test("Issues should be fetched automatically", () async {
      await container.waitUntil<IssuesPageState>((it) => it.issueList.isNotEmpty);
      expect(state().issueList, MockRepositoryService.issues);
    });
  });
}
