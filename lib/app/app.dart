import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_search/app/app_injector.dart';
import 'package:github_search/app/app_localizations.dart';
import 'package:github_search/app/app_reporter.dart';
import 'package:github_search/app/app_routing.dart';
import 'package:github_search/app/global_state/initialization/initialization_state.dart';
import 'package:github_search/app/global_state/theme/theme_state.dart';
import 'package:github_search/app/widget/app_global_error_dialog.dart';
import 'package:github_search/util/hook/use_async_stream_subscription.dart';
import 'package:injector/injector.dart';
import 'package:utopia_arch/utopia_arch.dart';

import 'global_state/user_preferences/user_preferences_state.dart';

class App extends HookWidget {
  static void run() {
    runWithReporterAndUiErrors(appReporter, (uiErrors) {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(App(uiErrors: uiErrors));
    });
  }

  final Stream<UiGlobalError> uiErrors;

  const App({super.key, required this.uiErrors});

  @override
  Widget build(BuildContext context) {
    final navigatorKey = useMemoized(GlobalKey<NavigatorState>.new);

    return _buildApp(
      navigatorKey: navigatorKey,
      builder: (context, child) => HookProviderContainerWidget(
        _buildProviders(navigatorKey),
        child: HookBuilder(builder: (context) {
          useAsyncStreamSubscription<UiGlobalError>(
            uiErrors,
            (error) async => _handleUiError(context, error, navigatorKey.currentState!),
          );
          return child;
        }),
      ),
    );
  }

  Widget _buildApp({
    required GlobalKey<NavigatorState> navigatorKey,
    required Widget Function(BuildContext context, Widget child) builder,
  }) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(physics: const ClampingScrollPhysics()),
      // navigation
      navigatorKey: navigatorKey,
      onGenerateInitialRoutes: (name) => [RouteConfig.generateInitialRoute(AppRouting.routes, name)],
      onGenerateRoute: (settings) => RouteConfig.generateRoute(AppRouting.routes, settings),
      navigatorObservers: [RouteConfig.createNavigationObserver(AppRouting.routes)],
      initialRoute: AppRouting.initialRoute,
      // localization
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: localizedLabels.keys,
      // other
      debugShowCheckedModeBanner: false,
      builder: (context, child) => builder(context, child!),
    );
  }

  Map<Type, Object? Function()> _buildProviders(GlobalKey<NavigatorState> navigatorKey) {
    return {
      GlobalKey<NavigatorState>: () => navigatorKey,
      Injector: () => useMemoized(AppInjector.setup),
      UserPreferencesState: useUserPreferencesState,
      ThemeState: useThemeState,
      InitializationState: useInitializationState, // leave at the end
    };
  }

  Future<void> _handleUiError(BuildContext context, UiGlobalError error, NavigatorState navigator) async {
    // skip debug-time assertion errors
    if (error.error is! AssertionError) {
      final route = DialogRoute<void>(
        context: context,
        builder: (context) => AppGlobalErrorDialog(error: error),
      );
      await navigator.push(route);
    }
  }
}
