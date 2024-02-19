import 'package:flutter/material.dart';
import 'package:github_search/common/constant/app_colors.dart';

class AppTexts {
  final AppColors colors;

  const AppTexts({required this.colors});

  TextStyle get title => TextStyle(
        fontFamily: "NotoSansMono",
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: colors.text,
      );

  TextStyle get titleAccent => title.copyWith(color: colors.accent);

  TextStyle get text => TextStyle(
        fontFamily: "NotoSansMono",
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: colors.text,
      );

  TextStyle get textSmall => text.copyWith(fontSize: 10);

  TextStyle get hint => TextStyle(
        fontFamily: "NotoSansMono",
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: colors.paragraph,
      );
}
