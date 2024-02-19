import 'package:flutter/material.dart';

class AppColors {
  final Color text;
  final Color background;
  final Color primary;
  final Color paragraph;
  final Color accent;

  const AppColors._({
    required this.text,
    required this.background,
    required this.primary,
    required this.paragraph,
    required this.accent,
  });

  static AppColors dark = const AppColors._(
    text: Color(0xFFE6EDF3),
    background: Color(0xFF0E1116),
    primary: Color(0xFF020408),
    paragraph: Color(0xFF686D75),
    accent: Color(0xFF5C81EE),
  );

  static AppColors light = const AppColors._(
    text: Color(0xFF1F2328),
    background: Color(0xFFFFFFFF),
    primary: Color(0xFFF7F8FA),
    paragraph: Color(0xFF686D75),
    accent: Color(0xFF5C81EE),
  );
}
