import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/selected_additional_doc_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdditionalDocsCard extends ConsumerWidget {
  const AdditionalDocsCard({super.key});

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
                  Strings.additionalDocuments,
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Strings.otherKYCDocs,
            style: TextStyle(color: textGrayColor2),
          ),
          const SizedBox(height: 5),
          _imageWidget(ref),
        ],
      ),
    );
  }

  Widget _imageWidget(WidgetRef ref) {
    final selectedDocsListProvider = ref.watch(selectedAdditionalDocListNotifierProvider.notifier);
    ref.watch(selectedAdditionalDocListNotifierProvider);

    return Row(
      children: selectedDocsListProvider.list().map((e) {
        return Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.file(
              File(e.filePath ?? ""),
              height: 150.h,
              width: 150.h,
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }
}
