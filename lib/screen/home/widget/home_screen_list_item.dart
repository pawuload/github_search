import 'package:flutter/material.dart';
import 'package:github_search/common/constant/app_values.dart';
import 'package:github_search/screen/home/state/home_screen_state.dart';
import 'package:github_search/util/extension/context_extensions.dart';

class HomeScreenListItem extends StatelessWidget {
  final HomeScreenState state;

  const HomeScreenListItem({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
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
    return Row(
      children: [
        Expanded(
          child: Column(
            //TODO
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('pawuload/xdd69', style: context.texts.titleAccent),
              const SizedBox(height: 10),
              Text('This project sucks as fuck xd jp 2 gmd hwdp policji', style: context.texts.text),
              const SizedBox(height: 24),
              Text('flutter', style: context.texts.textSmall),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(Icons.arrow_forward_ios, color: context.colors.text),
        ),
      ],
    );
  }
}
