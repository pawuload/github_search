import 'package:flutter/material.dart';
import 'package:github_search/screen/details/details_screen.dart';
import 'package:github_search/screen/home/state/home_screen_state.dart';
import 'package:github_search/screen/home/view/home_screen_view.dart';
import 'package:utopia_arch/utopia_arch.dart';

class HomeScreen extends HookWidget {
  static const route = '/home';
  static final routeConfig = RouteConfig.material(HomeScreen._);

  const HomeScreen._();

  @override
  Widget build(BuildContext context) {
    final state = useHomeScreenState(
      navigateToDetails: (args) async => context.navigator.pushNamed(DetailsScreen.route, arguments: args),
    );
    return HomeScreenView(state: state);
  }
}
