import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/document_review/providers/review_uploaded_doc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DocumentUploadContainer extends ConsumerWidget {
  final String label;
  final String cameraScreenDescription;
  final String reviewScreenTitle;

  const DocumentUploadContainer({
    required this.cameraScreenDescription,
    required this.reviewScreenTitle,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DottedBorder(
      color: primaryBlueColor,
      strokeWidth: 1,
      dashPattern: const <double>[5, 4],
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      child: InkWell(
        onTap: () {
          ref.read(cameraScreenSubtitle.notifier).update((state) => cameraScreenDescription);
          ref.read(reviewUploadedDocScreenTitle.notifier).update((state) => reviewScreenTitle);

          context.pushNamed(AppRoutes.cameraScreen);
        },
        child: SizedBox(
          height: 157.h,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageConstants.cameraImage,
              ),
              const SizedBox(height: 10),
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
