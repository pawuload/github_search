import 'package:flutter/material.dart';
import 'package:github_search/common/constant/app_values.dart';
import 'package:github_search/screen/home/state/home_screen_state.dart';
import 'package:github_search/util/extension/context_extensions.dart';
import 'package:utopia_arch/utopia_arch.dart';

class HomeScreenTextField extends StatelessWidget {
  final HomeScreenState state;

  const HomeScreenTextField({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return StatelessTextEditingControllerWrapper(
      text: state.searchState,
      builder: (controller) {
        return TextField(
          controller: controller,
          style: context.texts.text,
          cursorColor: context.colors.accent,
          decoration: _buildInputDecoration(context),
        );
      },
    );
  }

  InputDecoration _buildInputDecoration(BuildContext context) {
    return InputDecoration(
      hoverColor: context.colors.accent,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: context.colors.accent),
      ),
      contentPadding: EdgeInsets.zero,
      hintText: context.strings.home.search,
      hintStyle: context.texts.hint,
      border: OutlineInputBorder(borderRadius: AppValues.smallBorderRadius),
      prefixIcon: Icon(Icons.search_outlined, color: context.colors.paragraph),
      suffixIcon: state.searchState.value.isNotEmpty
          ? IconButton(
              onPressed: state.onClearPressed,
              icon: const Icon(Icons.cancel),
            )
          : null,
    );
  }
}
