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
      appBar: _buildAppBar(context),
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
          context.strings.issues.emptyList,
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
          number: item.number,
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.primary,
      iconTheme: IconThemeData(color: context.colors.text),
      title: Text(context.strings.issues.appbar, style: context.texts.title),
    );
  }
}
