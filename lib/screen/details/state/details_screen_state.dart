import 'package:flutter/material.dart';
import 'package:github_search/common/constant/app_icons.dart';
import 'package:github_search/screen/details/pages/issues/issues_page.dart';
import 'package:github_search/screen/details/pages/pulls/pulls_page.dart';
import 'package:utopia_arch/utopia_arch.dart';

enum DetailsPage {
  issues(IssuesPage.new, AppIcons.issue),
  pulls(PullsPage.new, AppIcons.pull);

  final Widget Function() builder;
  final String icon;

  const DetailsPage(this.builder, this.icon);
}

class DetailsScreenState {
  final DetailsPage currentPage;
  final void Function(DetailsPage) onPageChanged;

  const DetailsScreenState({required this.currentPage, required this.onPageChanged});
}

DetailsScreenState useDetailsScreenState() {
  final pageState = useState<DetailsPage>(DetailsPage.issues);

  return DetailsScreenState(
    currentPage: pageState.value,
    onPageChanged: (page) => pageState.value = page,
  );
}
