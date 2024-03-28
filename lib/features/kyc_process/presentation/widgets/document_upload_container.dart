import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/review_uploaded_doc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DocumentUploadContainer extends ConsumerWidget {
  final String label;
  final String cameraScreenTitle;
  final String cameraScreenDescription;
  final String reviewScreenTitle;
  final StateProvider<String?> provider;

  const DocumentUploadContainer({
    required this.provider,
    required this.cameraScreenTitle,
    required this.cameraScreenDescription,
    required this.reviewScreenTitle,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documentFilePath = ref.watch(provider);

    return DottedBorder(
      color: primaryBlueColor,
      strokeWidth: 1,
      dashPattern: const <double>[5, 4],
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      child: InkWell(
        onTap: documentFilePath == null
            ? () {
                ref.read(cameraScreenSubtitle.notifier).update((state) => cameraScreenDescription);
                ref.read(cameraScreenAppBarTitle.notifier).update((state) => cameraScreenTitle);
                ref.read(reviewUploadedDocScreenTitle.notifier).update((state) => reviewScreenTitle);

                context.pushNamed(AppRoutes.cameraScreen, extra: provider);
              }
            : null,
        child: SizedBox(
          height: 157.h,
          width: double.infinity,
          child: documentFilePath == null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstants.cameraImage,
                      height: 20.h,
                      width: 20.w,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                )
              : Stack(
                  children: [
                    Positioned.fill(
                      child: Image.file(
                        File(documentFilePath),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: _clearDocumentButton(ref),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _clearDocumentButton(WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref.watch(provider.notifier).update((state) => null);
      },
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(color: errorTextRed, shape: BoxShape.circle),
        child: const Icon(
          Icons.close,
          color: white,
          size: 20,
        ),
      ),
    );
  }
}
