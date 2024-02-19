import 'package:flutter/material.dart';
import 'package:github_search/common/constant/app_values.dart';
import 'package:github_search/util/extension/context_extensions.dart';

class ListItem extends StatelessWidget {
  final String title;
  final int number;

  const ListItem({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: AppValues.smallBorderRadius,
        border: Border.all(color: context.colors.paragraph, width: 2),
      ),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: context.texts.title),
        const SizedBox(height: 14),
        Text('#$number', style: context.texts.textSmall),
      ],
    );
  }
}
