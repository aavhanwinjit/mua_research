import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/document_review/providers/review_uploaded_doc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ReviewUploadedDocumentScreen extends ConsumerWidget {
  const ReviewUploadedDocumentScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final String? screenTitle = ref.watch(reviewUploadedDocScreenTitle);

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
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: textGrayColor,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    ImageConstants.idImage,
                    width: double.infinity,
                    height: 250.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              Text(
                Strings.makeSureDocsClear,
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomPrimaryButton(
                disable: false,
                label: Strings.upload,
                onTap: () {
                  context.pop();
                },
              ),
              SizedBox(height: 16.h),
              CustomOutlineButton(
                disable: false,
                primary: true,
                label: Strings.retakePhoto,
                onTap: () {
                  context.pushReplacementNamed(AppRoutes.cameraScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
