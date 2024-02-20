import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/app/global_state/theme/theme_state.dart';
import 'package:github_search/common/constant/app_colors.dart';
import 'package:github_search/common/constant/app_texts.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/screen/home/state/home_screen_state.dart';
import 'package:github_search/service/repository/repository_service.dart';
import 'package:injector/injector.dart';
import 'package:mocktail/mocktail.dart';
import 'package:utopia_arch/utopia_arch.dart';

import '../mock/mock_repository_service.dart';

class _Navigator extends Mock {
  void navigateToDetails(Repository repository);
}

ThemeState useMockThemeState() {
  final darkModeState = useState<bool>(false);

  return ThemeState(
    darkMode: darkModeState.value,
    changeType: darkModeState.toggle,
    colors: AppColors.dark,
    texts: AppTexts(colors: AppColors.dark),
  );
}

void main() {
  group("HomeScreenState tests", () {
    late SimpleHookProviderContainer container;
    late _Navigator navigator;
    late HomeScreenState Function() state;

    setUp(() {
      final injector = Injector();
      injector.registerSingleton<RepositoryService>(() => MockRepositoryService());
      navigator = _Navigator();
      container = SimpleHookProviderContainer({
        Injector: () => injector,
        ThemeState: useMockThemeState,
        HomeScreenState: () => useHomeScreenState(navigateToDetails: navigator.navigateToDetails),
      });
      state = () => container<HomeScreenState>();
    });

    test("After typing name in searchbar should fetch repositories", () async {
      final searchState = container<HomeScreenState>().searchState;
      expect(state().searchState.value, "");
      expect(state().repositoryList, null);
      searchState.value = "test";
      await container.waitUntil<HomeScreenState>((it) => it.repositoryList != null);
      expect(state().repositoryList, MockRepositoryService.repositories);
    });

    test("On item pressed should call navigate with selected repository as argument", () async {
      const repository = MockRepositoryService.repositories;
      state().onItemPressed(repository[0]);

      verify(() => navigator.navigateToDetails(repository[0])).called(1);
    });

    test("On change theme pressed, dark mode should be changed", () {
      state().onThemeChanged();

      expect(container<ThemeState>().darkMode, true);
    });
  });
}
