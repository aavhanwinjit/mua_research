import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:flutter/material.dart';

class CustomBorderStyle {
  static final InputBorder customTextFieldBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: borderColor,
    ),
    borderRadius: BorderRadius.circular(12),
  );

  static final InputBorder customTextFieldFocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: primaryColor,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
