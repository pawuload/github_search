import 'package:flutter/material.dart';
import 'package:github_search/common/constant/app_values.dart';
import 'package:github_search/util/extension/context_extensions.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String url;

  const ListItem({
    super.key,
    required this.title,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: AppValues.smallBorderRadius,
          border: Border.all(color: context.colors.paragraph, width: 2),
        ),
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: context.texts.title),
        const SizedBox(height: 24),
        // if (repository.language != null) Text(repository.language!, style: context.texts.textSmall),
      ],
    );
  }
}
