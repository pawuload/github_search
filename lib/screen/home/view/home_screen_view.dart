import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_search/common/constant/app_icons.dart';
import 'package:github_search/common/constant/app_values.dart';
import 'package:github_search/screen/home/state/home_screen_state.dart';
import 'package:github_search/screen/home/widget/home_screen_list_item.dart';
import 'package:github_search/screen/home/widget/home_screen_text_field.dart';
import 'package:github_search/util/extension/context_extensions.dart';

class HomeScreenView extends StatelessWidget {
  final HomeScreenState state;

  const HomeScreenView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      backgroundColor: context.colors.background,
      body: Padding(
        padding: AppValues.screenPadding,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: HomeScreenTextField(state: state),
            ),
            HomeScreenListItem(state: state),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.primary,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GestureDetector(
            onTap: state.onThemeChanged,
            child: Icon(
              context.theme.darkMode ? Icons.wb_sunny_outlined : Icons.dark_mode_outlined,
              color: context.colors.text,
            ),
          ),
        ),
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Transform.scale(
            scale: 0.9,
            child: SvgPicture.asset(
              AppIcons.logo,
              color: context.colors.text,
            ),
          ),
          const SizedBox(width: 8),
          Text('GitHub Search', style: context.texts.title),
        ],
      ),
    );
  }
}
