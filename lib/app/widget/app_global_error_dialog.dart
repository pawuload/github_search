import 'package:flutter/material.dart';
import 'package:utopia_arch/utopia_arch.dart';

class AppGlobalErrorDialog extends StatelessWidget {
  final UiGlobalError error;

  const AppGlobalErrorDialog({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    //TODO set strings
    return AlertDialog(
      title: Text('Error'),
      content: Text('Something gone wrong'),
      actions: [
        TextButton(onPressed: () => context.navigator.pop(), child: Text('ok')),
        if (error.canRetry)
          TextButton(
            onPressed: () {
              context.navigator.pop();
              error.retry!();
            },
            child: Text('retry'),
          ),
      ],
    );
  }
}
