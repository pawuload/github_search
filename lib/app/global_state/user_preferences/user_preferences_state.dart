import 'package:utopia_arch/utopia_arch.dart';

const _onboardingKey = 'user.isOnboarded';

class UserPreferencesState implements HasInitialized {
  final bool? isOnboarded;
  final void Function() setOnboarded;

  const UserPreferencesState({
    required this.isOnboarded,
    required this.setOnboarded,
  });

  @override
  bool get isInitialized => isOnboarded != null;
}

UserPreferencesState useUserPreferencesState() {
  final isOnboardedState = usePreferencesPersistedState<bool>(_onboardingKey, defaultValue: false);

  return UserPreferencesState(
    isOnboarded: isOnboardedState.value,
    setOnboarded: () => isOnboardedState.value = true,
  );
}
