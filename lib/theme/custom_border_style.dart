import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';

class CustomBorderStyle {
  static final InputBorder customTextFieldBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: textFieldBorderColor,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
