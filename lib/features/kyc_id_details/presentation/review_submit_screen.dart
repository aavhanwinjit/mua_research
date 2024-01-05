import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class ReviewSubmitScreen extends StatelessWidget {
  const ReviewSubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        forceMaterialTransparency: true,
        title: Text(
          "Review & Submit",
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: BackButton(
          color: black,
        ),
      ),
    );
  }
}