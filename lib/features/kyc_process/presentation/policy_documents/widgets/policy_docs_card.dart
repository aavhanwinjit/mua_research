import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/policy_document_element.dart/policy_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/selected_policy_doc_type_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_file/open_file.dart';

class PolicyDocsCard extends ConsumerWidget {
  const PolicyDocsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          //info box heading
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.policyDocuments,
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
    final selectedDocsListProvider = ref.watch(selectedPolicyDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPolicyDocTypeListNotifierProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: selectedDocsListProvider
              .list()
              .map(
                (PolicyDocumentElement e) => Container(
                  margin: EdgeInsets.only(right: 8.w),
                  width: 120.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.documentElement?.policyDocTypes ?? "-",
                        maxLines: 2,
                        style: const TextStyle(color: textGrayColor2),
                      ),
                      const SizedBox(height: 5),
                      _pdfWidget(e.filePath),
                      // _imageWidget(e),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _imageWidget(PolicyDocumentElement element) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.file(
        File(element.filePath ?? ""),
        height: 150.h,
        width: 150.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _pdfWidget(String? filePath) {
    return InkWell(
      onTap: () {
        OpenFile.open(filePath);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          height: 80.h,
          width: 80.h,
          child: Center(
            child: Image.asset(
              ImageConstants.pdfIcon2,
            ),
          ),
        ),
      ),
    );
  }
}
