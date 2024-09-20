import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:open_file/open_file.dart';

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
        ],
      ),
    );
  }

  Widget _infoWidget(WidgetRef ref) {
    final String? addressOtherName = ref.watch(addressOtherNameProvider);
    final String? addressSurname = ref.watch(addressSurnameProvider);
    final String? addressText = ref.watch(addressTextProvider);

    final ScanDocumentResponseBody? addressOCRResponse = ref.watch(addressDocOCRApiResponse);

    final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
                    if (selectedAddressDocType?.documentCode == DocumentCodes.UTB.toString().split('.').last) ...[
                      const SizedBox(height: 24),
                      InfoTile(
                        title: Strings.billDate,
                        value: addressOCRResponse?.ocrResponse?.documentdata?.billDate ?? "-",
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
          const SizedBox(height: 24),
          InfoTile(
            title: Strings.address,
            value: addressText ?? "-",
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
          const SizedBox(height: 10),
          selectedAddressDocType?.documentCode != DocumentCodes.UTB.toString().split('.').last
              ? _pdfWidget(addressProofImagePath ?? "")
              : _imageWidget(addressProofImagePath),
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

  Widget _pdfWidget(String filePath) {
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
