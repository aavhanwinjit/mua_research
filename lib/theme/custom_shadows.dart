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

  static final List<BoxShadow> applicantCardShadow = [
    BoxShadow(
      color: shadowColor.withOpacity(0.12),
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: -2,
    ),
  ];

  static final List<BoxShadow> kycSubmitCardShadow = [
    BoxShadow(
      color: shadowColor.withOpacity(0.12),
      offset: Offset(0, 14),
      blurRadius: 64,
      spreadRadius: -4,
    ),
    BoxShadow(
      color: shadowColor.withOpacity(0.12),
      offset: Offset(0, 8),
      blurRadius: 22,
      spreadRadius: -6,
    ),
  ];
}
