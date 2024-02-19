import 'package:github_search/app/global_state/theme/theme_state.dart';
import 'package:utopia_arch/utopia_arch.dart';

class HomeScreenState {
  final FieldState searchState;
  final void Function() onThemeChanged;

  const HomeScreenState({
    required this.searchState,
    required this.onThemeChanged,
  });
}

HomeScreenState useHomeScreenState() {
  final themeState = useProvided<ThemeState>();
  final searchState = useFieldState();

  return HomeScreenState(
    searchState: searchState,
    onThemeChanged: themeState.changeType,
  );
}
