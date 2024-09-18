import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/review_uploaded_doc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:open_file/open_file.dart';

class ReviewUploadedDocumentScreen extends ConsumerWidget {
  final StateProvider<String?> provider;
  final String? documentCode;

  const ReviewUploadedDocumentScreen({
    required this.provider,
    this.documentCode,
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final String? screenTitle = ref.watch(reviewUploadedDocScreenTitle);
    final String? capturedFilePath = ref.watch(capturedFilePathProvider);

    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: screenTitle ?? "",
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              const Spacer(),
              InkWell(
                onTap: documentCode != null && documentCode == DocumentCodes.LAA.toString().split('.').last
                    ? () {
                        OpenFile.open(capturedFilePath);
                      }
                    : null,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: textGrayColor,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: documentCode != null && documentCode == DocumentCodes.LAA.toString().split('.').last
                        ? SizedBox(
                            width: double.infinity,
                            height: 250.h,
                            child: Center(
                              child: Image.asset(
                                ImageConstants.pdfIcon2,
                                // width: double.infinity,
                                // height: 250.h,
                                // fit: BoxFit.contain,
                              ),
                            ),
                          )
                        : Image.file(
                            File(capturedFilePath ?? ""),
                            width: double.infinity,
                            height: 250.h,
                            fit: BoxFit.contain,
                          ),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              if (documentCode != null && documentCode == DocumentCodes.LAA.toString().split('.').last) ...[
                const SizedBox()
              ] else ...[
                const Text(
                  Strings.makeSureDocsClear,
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
              ],
              const Spacer(),
              CustomPrimaryButton(
                disable: false,
                label: Strings.upload,
                onTap: () {
                  ref.watch(provider.notifier).update((state) => capturedFilePath);
                  context.pop();
                },
              ),
              SizedBox(height: 16.h),
              CustomOutlineButton(
                disable: false,
                primary: true,
                label: Strings.retakePhoto,
                onTap: () {
                  context.pop(true);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
