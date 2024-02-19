import 'package:flutter/material.dart';
import 'package:github_search/util/extension/context_extensions.dart';
import 'package:utopia_arch/utopia_arch.dart';

class AppGlobalErrorDialog extends StatelessWidget {
  final UiGlobalError error;

  const AppGlobalErrorDialog({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    final strings = context.strings.error;
    return AlertDialog(
      title: Text(strings.title),
      content: Text(strings.subtitle),
      actions: [
        TextButton(
          onPressed: () => context.navigator.pop(),
          child: Text(context.strings.common.ok),
        ),
      ],
    );
  }
}
