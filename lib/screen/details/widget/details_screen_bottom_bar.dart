import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_search/screen/details/state/details_screen_state.dart';
import 'package:github_search/util/extension/context_extensions.dart';

class DetailsScreenBottomBar extends StatelessWidget {
  final DetailsScreenState state;

  const DetailsScreenBottomBar({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: context.colors.primary, boxShadow: kElevationToShadow[4]),
      child: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              for (final page in DetailsPage.values) Expanded(child: _buildButton(context, page)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, DetailsPage page) {
    final bool isSelected = (page == state.currentPage);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => state.onPageChanged(page),
      child: SvgPicture.asset(
        page.icon,
        height: 30,
        colorFilter: ColorFilter.mode(isSelected ? context.colors.accent : context.colors.paragraph, BlendMode.srcIn),
      ),
    );
  }
}
