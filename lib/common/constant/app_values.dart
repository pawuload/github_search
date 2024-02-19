import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppValues {
  AppValues._();

  static const screenPaddingValue = 24.0;
  static const screenPaddingHorizontal = EdgeInsets.symmetric(horizontal: screenPaddingValue);
  static const screenPadding = EdgeInsets.all(screenPaddingValue);

  static final smallBorderRadius = BorderRadius.circular(8);
  static const Radius smallRadius = Radius.circular(8);
}
