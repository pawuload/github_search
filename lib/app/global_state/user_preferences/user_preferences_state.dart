import 'package:utopia_arch/utopia_arch.dart';

const _themeKey = 'theme.darkMode';

class UserPreferencesState implements HasInitialized {
  final bool? darkMode;
  final void Function() toggle;

  const UserPreferencesState({
    required this.darkMode,
    required this.toggle,
  });

  @override
  bool get isInitialized => darkMode != null;
}

UserPreferencesState useUserPreferencesState() {
  final darkModeState = usePreferencesPersistedState<bool>(_themeKey, defaultValue: false);

  return UserPreferencesState(
    darkMode: darkModeState.value,
    toggle: () => darkModeState.value = true,
  );
}
