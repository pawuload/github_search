import 'package:flutter/material.dart';
import 'package:github_search/common/constant/app_values.dart';
import 'package:github_search/common/widget/list_item/list_item.dart';
import 'package:github_search/common/widget/loader/app_loader.dart';
import 'package:github_search/screen/details/pages/issues/state/issues_screen_state.dart';
import 'package:github_search/util/extension/context_extensions.dart';

class IssuesPageView extends StatelessWidget {
  final IssuesPageState state;

  const IssuesPageView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Padding(
        padding: AppValues.screenPadding,
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (state.isLoading) return const AppLoader();

    if (state.issueList.isEmpty) {
      return Center(
        child: Text(
          'No issues found',
          style: context.texts.text,
        ),
      );
    }

    return ListView.builder(
      itemCount: state.issueList.length,
      itemBuilder: (context, index) {
        final item = state.issueList[index];
        return ListItem(
          title: item.title,
          url: item.url,
        );
      },
    );
  }
}
