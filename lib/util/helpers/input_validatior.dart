import 'package:flutter/material.dart';
import 'package:github_search/util/extension/context_extensions.dart';
import 'package:utopia_arch/utopia_arch.dart';

class InputValidator {
  static final weight = _validateMaxValue(200);

  static final height = _validateMaxValue(250);

  static Validator<String> _validateMaxValue(int maxValue) =>
      Validators.conditional<String>((it) => double.parse(it) > maxValue, onFalse: (context) => 'Max: $maxValue'); //todo localization
}
