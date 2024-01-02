import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomShadows {
  static final List<BoxShadow> signatureCardShadow = [
    BoxShadow(
      color: shadowColor.withOpacity(0.12),
      offset: Offset(0, 8),
      blurRadius: 8,
      spreadRadius: -4,
    ),
  ];
}
