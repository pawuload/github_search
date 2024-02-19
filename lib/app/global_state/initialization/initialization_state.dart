import 'package:github_search/app/global_state/theme/theme_state.dart';
import 'package:github_search/app/global_state/user_preferences/user_preferences_state.dart';
import 'package:utopia_arch/utopia_arch.dart';

class InitializationState extends HasInitialized {
  const InitializationState({required super.isInitialized});
}

InitializationState useInitializationState() {
  final states = [
    useProvided<UserPreferencesState>(),
    // useProvided<ThemeState>(),
  ];

  return InitializationState(isInitialized: HasInitialized.all(states));
}
