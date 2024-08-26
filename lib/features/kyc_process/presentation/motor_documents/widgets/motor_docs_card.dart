import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/motor_insurance_document_element/motor_insurance_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/selected_motor_insurance_doc_type_list_notifier.dart';
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
    // final String? motorInsuranceProofImagePath =
    //     ref.watch(motorInsuranceProofFilePathProvider);

    // final MotorInsuranceDocumentTypeModel? selectedMotorInsuranceDocType =
    //     ref.watch(selectedMotorInsuranceDocTypeProvider);

    final selectedDocsListProvider = ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);
    ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: selectedDocsListProvider
              .list()
              .map(
                (MotorInsuranceDocumentElement e) => Container(
                  margin: EdgeInsets.only(right: 8.w),
                  width: 150.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.documentElement!.motorInsuranceDocType ?? "-",
                        style: const TextStyle(color: textGrayColor2),
                      ),
                      const SizedBox(height: 5),
                      _imageWidget(e.motorDocImagePath),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
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
