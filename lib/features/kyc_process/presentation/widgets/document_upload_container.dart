import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DocumentUploadContainer extends StatelessWidget {
  final String label;

  const DocumentUploadContainer({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: primaryBlueColor,
      strokeWidth: 1,
      dashPattern: const <double>[5, 4],
      borderType: BorderType.RRect,
      radius: Radius.circular(16),
      child: InkWell(
        onTap: () => context.pushNamed(AppRoutes.cameraScreen),
        child: Container(
          height: 157.h,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageConstants.cameraImage,
              ),
              SizedBox(height: 10),
              Text(
                label,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
