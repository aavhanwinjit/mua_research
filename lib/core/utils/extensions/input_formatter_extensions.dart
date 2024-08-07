import 'package:flutter/services.dart';

class NumbersOnlyFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Regular expression to match only digits and exclude spaces
    final RegExp regExp = RegExp(r'^[0-9]+$');

    // Check if the new value contains only digits (no spaces)
    if (regExp.hasMatch(newValue.text)) {
      return newValue;
    }

    // If the new value contains spaces or non-digits, reject the change
    return oldValue;
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue.copyWith(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
