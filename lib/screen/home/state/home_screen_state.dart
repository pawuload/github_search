import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:github_search/app/global_state/theme/theme_state.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/service/repository/repository_service.dart';
import 'package:utopia_arch/utopia_arch.dart';

class HomeScreenState {
  final IList<Repository>? repositoryList;
  final FieldState searchState;
  final bool isLoading;
  final void Function() onThemeChanged;
  final void Function() onClearPressed;
  final void Function(Repository) onItemPressed;

  const HomeScreenState({
    required this.repositoryList,
    required this.searchState,
    required this.isLoading,
    required this.onThemeChanged,
    required this.onClearPressed,
    required this.onItemPressed,
  });
}

HomeScreenState useHomeScreenState({
  required void Function(Repository) navigateToDetails,
}) {
  final themeState = useProvided<ThemeState>();
  final repositoryService = useInjected<RepositoryService>();

  final searchState = useFieldState();

  //returns value and refreshes automatically when keys change
  final state = useAutoComputedState(
    () async => repositoryService.getRepos(searchState.value),
    shouldCompute: searchState.value.isNotEmpty,
    debounceDuration: const Duration(milliseconds: 800),
    keys: [searchState.value],
  );

  void onItemPressed(Repository repository) => navigateToDetails(repository);

  return HomeScreenState(
    repositoryList: state.valueOrNull,
    searchState: searchState,
    isLoading: state.value is ComputedStateValueInProgress,
    onThemeChanged: themeState.changeType,
    onClearPressed: () => searchState.value = '',
    onItemPressed: onItemPressed,
  );
}
