import 'package:flutter/material.dart';
import 'package:github_search/screen/details/state/details_screen_state.dart';
import 'package:github_search/screen/details/view/details_screen_view.dart';
import 'package:provider/provider.dart';
import 'package:utopia_arch/utopia_arch.dart';

class DetailsScreen extends HookWidget {
  static const route = '/details';
  static final routeConfig = RouteConfig.material(DetailsScreen._);

  const DetailsScreen._();

  @override
  Widget build(BuildContext context) {
    final state = useDetailsScreenState();
    return Provider.value(value: state, child: DetailsScreenView(state: state));
  }
}
