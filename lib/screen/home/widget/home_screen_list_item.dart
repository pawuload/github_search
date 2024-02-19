import 'package:flutter/material.dart';
import 'package:github_search/common/constant/app_values.dart';
import 'package:github_search/model/repository/repository.dart';
import 'package:github_search/util/extension/context_extensions.dart';

class HomeScreenListItem extends StatelessWidget {
  final void Function(Repository) onItemPressed;
  final Repository repository;

  const HomeScreenListItem({super.key, required this.onItemPressed, required this.repository});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onItemPressed(repository),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: AppValues.smallBorderRadius,
          border: Border.all(color: context.colors.paragraph, width: 2),
        ),
        child: _buildTile(context),
      ),
    );
  }

  Widget _buildTile(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildContent(context),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(Icons.arrow_forward_ios, color: context.colors.text),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(repository.fullName, style: context.texts.titleAccent),
        const SizedBox(height: 10),
        if (repository.description != null)
          Text(
            repository.description!,
            style: context.texts.text,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        const SizedBox(height: 24),
        if (repository.language != null) Text(repository.language!, style: context.texts.textSmall),
      ],
    );
  }
}
