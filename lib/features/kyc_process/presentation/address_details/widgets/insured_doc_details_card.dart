import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/por_document_element/por_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InsuredDocDetailsCard extends ConsumerWidget {
  const InsuredDocDetailsCard({super.key});

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
                  Strings.addressDetails,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // TextButton(
                //   onPressed: () => context.pushNamed(AppRoutes.editAddressDetailsScreen),
                //   child: Text(
                //     Strings.edit,
                //     style: TextStyle(
                //       fontSize: 14.sp,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          _infoWidget(ref),
          SizedBox(height: 24.h),
          _imageRow(ref),
          SizedBox(height: 24.h),
          _insuredDocWidget(context, ref),
        ],
      ),
    );
  }

  Widget _infoWidget(WidgetRef ref) {
    final selectedApplication = ref.watch(selectedApplicationProvider);

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
                      value: selectedApplication?.addressDocSurname ?? "-",
                    ),
                    if (selectedApplication?.addressDocBillDate != null) ...[
                      const SizedBox(height: 24),
                      InfoTile(
                        title: Strings.billDate,
                        value: selectedApplication?.addressDocBillDate,
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
                      value: selectedApplication?.addressDocOtherName ?? "-",
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          InfoTile(
            title: Strings.address,
            value: selectedApplication?.addressDocAddress ?? "-",
          ),
        ],
      ),
    );
  }

  Widget _insuredDocWidget(BuildContext context, WidgetRef ref) {
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
        SizedBox(height: 4.h),
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
        SizedBox(height: 24.h),
        _infoWidget2(ref),
        SizedBox(height: 24.h),
        _imageRow2(),
      ],
    );
  }

  Widget _infoWidget2(WidgetRef ref) {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: selectedDocsListProvider.list().length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final PORDocumentElement item = selectedDocsListProvider.list()[index];

        return _docElement(item);
      },
      separatorBuilder: (context, index) {
        return const SizedBox();
      },
    );
  }

  Widget _docElement(PORDocumentElement item) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _surnameWidget(),
          _billDateWidget(),
        ],
      ),
    );
  }

  Widget _surnameWidget() {
    // "KYC validation failed. Last name is not matching in the document.
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoTile(
            title: Strings.surname,
            value: "Sharma",
          ),
        ],
      ),
    );
  }

  Widget _billDateWidget() {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoTile(
            title: Strings.billDate,
            value: "21 Dec 2023",
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
