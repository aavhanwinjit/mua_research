import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/features/kyc_process/data/models/por_document_element/por_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/address_proof_image_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:open_file/open_file.dart';

class InsuredDocDetailsCard extends ConsumerStatefulWidget {
  const InsuredDocDetailsCard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InsuredDocDetailsCardState();
}

class _InsuredDocDetailsCardState extends ConsumerState<InsuredDocDetailsCard> {
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
              ],
            ),
          ),
          _infoWidget(),
          SizedBox(height: 24.h),
          const AddressProofImageWidget(),
          SizedBox(height: 24.h),
          _insuredDocWidget(context),
        ],
      ),
    );
  }

  Widget _infoWidget() {
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
                        value: selectedApplication?.addressDocBillDate!.format('yyyy-MM-dd') ?? "-",
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

  Widget _insuredDocWidget(BuildContext context) {
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
                Strings.insuredDetails,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextButton(
                onPressed: () async {
                  final bool? result = await context.pushNamed(AppRoutes.editInsuredDetailsScreen);
                  if (result == true) {
                    setState(() {});
                  }
                },
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
        SizedBox(height: 24.h),
      ],
    );
  }

  Widget _infoWidget2(WidgetRef ref) {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
    final selectedDocsList = ref.watch(selectedPorDocTypeListNotifierProvider);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: selectedDocsList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final PORDocumentElement item = selectedDocsList[index];
        // final PORDocumentElement item = selectedDocsListProvider.list()[index];

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
          _surnameWidget(item),
          if (item.documentElement?.documentCode != DocumentCodes.NIL.toString().split('.').last &&
              item.documentElement?.documentCode != DocumentCodes.PSL.toString().split('.').last)
            _billDateWidget(item),
        ],
      ),
    );
  }

  Widget _surnameWidget(PORDocumentElement item) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoTile(
            title: Strings.surname,
            value: item.extractedLastName ?? "-",
          ),
        ],
      ),
    );
  }

  Widget _billDateWidget(PORDocumentElement item) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoTile(
            title: Strings.issueDate,
            value: item.issueDate ?? "-",
          ),
        ],
      ),
    );
  }

  Widget _imageRow2() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPorDocTypeListNotifierProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: selectedDocsListProvider
              .list()
              .map((e) => Padding(
                    padding: EdgeInsets.only(right: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.documentElement?.porDocType ?? "-",
                          style: const TextStyle(color: textGrayColor2),
                        ),
                        const SizedBox(height: 5),
                        e.documentElement?.documentCode == DocumentCodes.DRC.toString().split('.').last
                            ? _pdfWidget(e.filePath ?? "")
                            : _imageWidget(e.filePath),
                      ],
                    ),
                  ))
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
