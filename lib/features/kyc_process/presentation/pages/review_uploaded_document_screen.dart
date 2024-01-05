import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:flutter/material.dart';

class ReviewUploadedDocumentScreen extends StatelessWidget {
  const ReviewUploadedDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Text(
          "Identity/ID details",
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: BackButton(
          color: black,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: textGrayColor,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  ImageConstants.idImage,
                  width: double.infinity,
                  height: 250.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 75,
                vertical: 20,
              ),
              child: Text(
                "Make sure your details are clear and unobstructed",
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: CustomPrimaryButton(
                disable: false,
                label: 'Upload',
                onTap: () {},
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: CustomOutlineButton(
                disable: false,
                primary: true,
                label: 'Retake Photo',
                onTap: () {},
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
