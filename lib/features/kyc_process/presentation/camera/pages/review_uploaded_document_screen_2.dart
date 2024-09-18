import 'dart:convert';
import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/constants/enums/file_extension_enums.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/review_uploaded_doc_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/common_mixins/scan_document_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:open_file/open_file.dart';

class ReviewUploadedDocumentScreen2 extends ConsumerStatefulWidget {
  final Function(String, ScanDocumentResponseBody?) onChange;
  final String documentCode;
  final String? documentSide;
  final String? registrationNumber;
  final bool? isPdf;

  const ReviewUploadedDocumentScreen2({
    required this.onChange,
    required this.documentCode,
    this.documentSide,
    this.registrationNumber,
    this.isPdf,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ReviewUploadedDocumentScreen2State();
}

class _ReviewUploadedDocumentScreen2State extends ConsumerState<ReviewUploadedDocumentScreen2> with ScanDocumentMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(reviewScreen2LoadingProvider.notifier).update((state) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                onTap: widget.isPdf == true
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
                    child: widget.isPdf == true
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
              const Text(
                Strings.makeSureDocsClear,
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomPrimaryButton(
                loading: ref.watch(reviewScreen2LoadingProvider),
                disable: false,
                label: Strings.upload,
                onTap: () async {
                  if (widget.documentCode == DocumentCodes.HRP.toString().split('.').last) {
                    debugPrint("first scan document api call");

                    // flow is a bit different for horse power document as we are performing ocr on it
                    final String? capturedFirstImageFilePath = ref.watch(capturedFirstImageFilePathProvider);

                    File file = File(capturedFirstImageFilePath ?? "");
                    final List<int> fileBytes = await file.readAsBytes() as List<int>;
                    final String fileBase64 = base64Encode(fileBytes);

                    await scanDocument(
                      context: context,
                      ref: ref,
                      documentType: widget.documentCode,
                      loadingProvider: reviewScreen2LoadingProvider,
                      onSuccess: (ScanDocumentResponseBody? response) async {
                        ref.watch(reviewScreen2LoadingProvider.notifier).update((state) => false);
                        await _scanDocument(capturedFilePath);
                      },
                      base64Image: fileBase64,
                      documentSide: widget.documentSide,
                      registrationNumber: widget.registrationNumber,
                    );
                  } else {
                    await _scanDocument(capturedFilePath);
                  }
                },
              ),
              SizedBox(height: 16.h),
              CustomOutlineButton(
                disable: false,
                primary: true,
                label: Strings.retakePhoto,
                onTap: ref.watch(reviewScreen2LoadingProvider) == true
                    ? () {}
                    : () {
                        // context.pushReplacementNamed(
                        //   AppRoutes.cameraScreen2,
                        //   extra: {'onChange': widget.onChange, 'documentCode': widget.documentCode},
                        // );
                        context.pop(true);
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _scanDocument(String? capturedFilePath) async {
    debugPrint("second scan document api call");

    File file = File(capturedFilePath ?? "");
    final List<int> fileBytes = await file.readAsBytes() as List<int>;
    final String fileBase64 = base64Encode(fileBytes);

    await scanDocument(
      context: context,
      ref: ref,
      documentType: widget.documentCode,
      loadingProvider: reviewScreen2LoadingProvider,
      onSuccess: (ScanDocumentResponseBody? response) {
        ref.watch(reviewScreen2LoadingProvider.notifier).update((state) => false);

        widget.onChange(capturedFilePath ?? "", response);
      },
      base64Image: fileBase64,
      documentSide: widget.documentSide,
      registrationNumber: widget.registrationNumber,
      fileExtension: widget.isPdf == true ? FileExtensionEnums.pdf.toString().split('.').last : null,
    );
  }
}
