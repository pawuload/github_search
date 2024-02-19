import 'package:flutter/material.dart';
import 'package:github_search/common/widget/loader/app_loader.dart';
import 'package:github_search/screen/home/state/home_screen_state.dart';
import 'package:github_search/screen/home/widget/home_screen_list_item.dart';
import 'package:github_search/util/extension/context_extensions.dart';

class HomeScreenList extends StatelessWidget {
  final HomeScreenState state;

  const HomeScreenList({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) return const AppLoader();

    if (state.repositoryList != null) {
      if (state.repositoryList!.isEmpty) {
        return Center(
          child: Text(
            context.strings.home.emptyList,
            style: context.texts.text,
          ),
        );
      }

      return ListView.builder(
        itemCount: state.repositoryList!.length,
        itemBuilder: (context, index) {
          return HomeScreenListItem(
            onItemPressed: state.onItemPressed,
            repository: state.repositoryList![index],
          );
        },
      );
    }

    return const SizedBox.shrink();
  }
}
