import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/screen/details/pages/pulls/state/pulls_screen_state.dart';
import 'package:github_search/service/repository/repository_service.dart';
import 'package:injector/injector.dart';
import 'package:utopia_arch/utopia_arch.dart';

import '../mock/mock_repository_service.dart';

void main() {
  group("PullsScreenState tests", () {
    late SimpleHookProviderContainer container;
    late PullsPageState Function() state;

    setUp(() {
      final injector = Injector();
      injector.registerSingleton<RepositoryService>(() => MockRepositoryService());
      container = SimpleHookProviderContainer({
        Injector: () => injector,
        PullsPageState: () => usePullsPageState(args: MockRepositoryService.repositories[0]),
      });
      state = () => container<PullsPageState>();
    });

    test("Pull requests should be fetched automatically", () async {
      await container.waitUntil<PullsPageState>((it) => it.pullList.isNotEmpty);
      expect(state().pullList, MockRepositoryService.pulls);
    });
  });
}
