import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/non_motor_insurance_document_element/non_motor_insurance_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/selected_non_motor_insurance_doc_type_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NonMotorDocsCard extends ConsumerStatefulWidget {
  const NonMotorDocsCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NonMotorDocsCardState();
}

class _NonMotorDocsCardState extends ConsumerState<NonMotorDocsCard> {
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
                  Strings.nonMotorDocuments,
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
    final selectedDocsListProvider = ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);
    ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: selectedDocsListProvider
              .list()
              .map(
                (NonMotorInsuranceDocumentElement e) => Container(
                  margin: EdgeInsets.only(right: 8.w),
                  width: 150.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.documentElement!.nonMotorInsuranceDocType ?? "-",
                        style: const TextStyle(color: textGrayColor2),
                      ),
                      const SizedBox(height: 5),
                      _imageWidget(e.nonMotorDocImagePath),
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
