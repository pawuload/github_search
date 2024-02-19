import 'package:flutter/material.dart';
import 'package:github_search/screen/details/state/details_screen_state.dart';
import 'package:github_search/screen/details/widget/details_screen_bottom_bar.dart';
import 'package:utopia_arch/utopia_arch.dart';

class DetailsScreenView extends StatelessWidget {
  final DetailsScreenState state;

  const DetailsScreenView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CrossFadeIndexedStack(
          lazy: true,
          duration: const Duration(milliseconds: 400),
          index: state.currentPage.index,
          children: [
            for (final page in DetailsPage.values) page.builder(),
          ],
        ),
      ),
      bottomNavigationBar: DetailsScreenBottomBar(state: state),
    );
  }
}
