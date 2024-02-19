import 'package:flutter/material.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/screen/details/pages/issues/state/issues_screen_state.dart';
import 'package:github_search/screen/details/pages/issues/view/issues_screen_view.dart';
import 'package:utopia_arch/utopia_arch.dart';

class IssuesPage extends HookWidget {
  const IssuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = context.routeArgs<Repository>();
    final state = useIssuesPageState(args: args);
    return IssuesPageView(state: state);
  }
}
