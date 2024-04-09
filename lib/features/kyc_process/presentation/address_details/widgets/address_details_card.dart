import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddressDetailsCard extends ConsumerWidget {
  const AddressDetailsCard({super.key});

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
            padding: EdgeInsets.only(left: 16.w, top: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.addressDetails,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () => context.pushNamed(AppRoutes.editAddressDetailsScreen),
                  child: Text(
                    Strings.edit,
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _infoWidget(ref),
          SizedBox(height: 24.h),
          _imageRow(ref),
          SizedBox(height: 24.h),
          // _insuredDocWidget(),
        ],
      ),
    );
  }

  Widget _infoWidget(WidgetRef ref) {
    final String? addressOtherName = ref.watch(addressOtherNameProvider);
    final String? addressSurname = ref.watch(addressSurnameProvider);

    final ScanDocumentResponseBody? addressOCRResponse = ref.watch(addressDocOCRApiResponse);

    final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.surname,
                  value: addressSurname ?? "-",
                ),
                if (selectedAddressDocType?.documentCode == "UTB") ...[
                  const SizedBox(height: 24),
                  InfoTile(
                    title: Strings.billDate,
                    value: addressOCRResponse?.ocrResponse?.documentdata?.billDate,
                  ),
                ],
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.otherName,
                  value: addressOtherName ?? "-",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _insuredDocWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: const Divider(
            height: 0,
            color: borderColor,
          ),
        ),
        SizedBox(height: 24.h),
        Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.insuredDocuments,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 24.h),
        _infoWidget2(),
        SizedBox(height: 24.h),
        _imageRow2(),
      ],
    );
  }

  Widget _infoWidget2() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.surname,
                  value: "Sharma",
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.billDate,
                  value: "21 Dec 2023",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageRow(WidgetRef ref) {
    final String? addressProofImagePath = ref.watch(addressProofFilePathProvider);

    final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            selectedAddressDocType?.addressDocType ?? "-",
            style: const TextStyle(color: textGrayColor2),
          ),
          const SizedBox(height: 5),
          _imageWidget(addressProofImagePath),
        ],
      ),
    );
  }

  Widget _imageRow2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Strings.nicCard,
            style: TextStyle(color: textGrayColor2),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              _imageWidget(""),
              SizedBox(width: 16.w),
              _imageWidget(""),
            ],
          ),
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
