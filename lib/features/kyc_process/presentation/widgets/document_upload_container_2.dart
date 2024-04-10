import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/review_uploaded_doc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DocumentUploadContainer2 extends ConsumerWidget {
  final String label;
  final String cameraScreenTitle;
  final String cameraScreenDescription;
  final String reviewScreenTitle;
  final bool? disable;
  final Function()? disableCallback;
  final bool? hideClearButton;
  final String? filePath;
  final Function(String, ScanDocumentResponseBody?) onChange;
  final Function() clearFile;
  final String documentCode;

  const DocumentUploadContainer2({
    required this.documentCode,
    required this.filePath,
    required this.onChange,
    required this.clearFile,
    required this.cameraScreenTitle,
    required this.cameraScreenDescription,
    required this.reviewScreenTitle,
    required this.label,
    this.disable,
    this.disableCallback,
    this.hideClearButton,
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
        onTap: disable == true
            ? disableCallback
            : filePath == null
                ? () {
                    ref.read(cameraScreenSubtitle.notifier).update((state) => cameraScreenDescription);
                    ref.read(cameraScreenAppBarTitle.notifier).update((state) => cameraScreenTitle);
                    ref.read(reviewUploadedDocScreenTitle.notifier).update((state) => reviewScreenTitle);

                    context.pushNamed(
                      AppRoutes.cameraScreen2,
                      extra: {'onChange': onChange, 'documentCode': documentCode},
                    );
                  }
                : null,
        child: SizedBox(
          height: 157.h,
          width: double.infinity,
          child: filePath == null
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
                        File(filePath ?? ""),
                      ),
                    ),
                    if (hideClearButton != true)
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
        clearFile();
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
