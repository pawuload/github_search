import 'package:flutter/material.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/screen/details/pages/pulls/state/pulls_screen_state.dart';
import 'package:github_search/screen/details/pages/pulls/view/pulls_screen_view.dart';
import 'package:utopia_arch/utopia_arch.dart';

class PullsPage extends HookWidget {
  const PullsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = context.routeArgs<Repository>();
    final state = usePullsPageState(args: args);
    return PullsPageView(state: state);
  }
}
