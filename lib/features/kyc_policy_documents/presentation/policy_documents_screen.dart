import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PolicyDocumentsScreen extends ConsumerStatefulWidget {
  const PolicyDocumentsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PolicyDocumentsScreenState();
}

class _PolicyDocumentsScreenState extends ConsumerState<PolicyDocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: BackButton(
          color: black,
        ),
        title: Text(
          "Policy Documents",
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Please specify the type of document you are uploading.",
                style: TextStyle(
                  color: textGrayColor2,
                ),
              ),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              hint: Text("Select Document"),
              items: <String>[
                'Policy Document',
                'Claim Document',
                'New Business Document',
                'Underwriting Document',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(16),
                dashPattern: [3, 3],
                color: textGrayColor,
                child: SizedBox(
                  height: 200.h,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Image.asset(ImageConstants.disabledCameraImage),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Take a photo or upload Policy Documents",
                          style: TextStyle(
                            color: textGrayColor2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Add More Documents +",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: CustomPrimaryButton(
                disable: false,
                label: 'Next',
                onTap: () => context.pushNamed(AppRoutes.pdReviewSubmitScreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
