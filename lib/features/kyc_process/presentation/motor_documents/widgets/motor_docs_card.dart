import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MotorDocsCard extends ConsumerStatefulWidget {
  const MotorDocsCard({super.key});

  @override
  ConsumerState<MotorDocsCard> createState() => _MotorDocsCardState();
}

class _MotorDocsCardState extends ConsumerState<MotorDocsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.motorDocuments,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          _imageRow(ref),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Widget _imageRow(WidgetRef ref) {
    final String? motorInsuranceProofImagePath =
        ref.watch(motorInsuranceProofFilePathProvider);

    final MotorInsuranceDocumentTypeModel? selectedMotorInsuranceDocType =
        ref.watch(selectedMotorInsuranceDocTypeProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            selectedMotorInsuranceDocType?.motorInsuranceDocType ?? "-",
            style: const TextStyle(color: textGrayColor2),
          ),
          const SizedBox(height: 5),
          _imageWidget(motorInsuranceProofImagePath),
        ],
      ),
    );
  }

  Widget _imageWidget(String? filePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.file(
        File(filePath ?? ""),
        height: 150.h,
        width: 150.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
