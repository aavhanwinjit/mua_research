import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NICDetailsCard extends ConsumerWidget {
  const NICDetailsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final IdentityDocumentTypeModel? selectedIdDocType = ref.watch(selectedIdDocTypeProvider);

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
                  // Strings.nicCard,
                  selectedIdDocType?.identityDocType ?? "-",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () => context.pushNamed(AppRoutes.editDetailsScreen),
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
          //information
          _infoWidget(ref),
          SizedBox(height: 24.h),
          //NIC image
          _imageRow(ref),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Widget _infoWidget(WidgetRef ref) {
    String? firstName = ref.watch(extractedFirstNameProvider);
    String? surName = ref.watch(extractedSurNameProvider);
    String? idNumber = ref.watch(extractedNICIDNumberProvider);

    AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

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
                  value: surName ?? "NA",
                ),
                const SizedBox(height: 24),
                InfoTile(
                  title: (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
                      ? Strings.nicNumber
                      : Strings.passportNo,
                  value: idNumber ?? "NA",
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.otherName,
                  value: firstName ?? "NA",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageRow(WidgetRef ref) {
    final idCardFrontSide = ref.watch(idDocFrontFilePathProvider);
    final idCardBackSide = ref.watch(idDocBackFilePathProvider);
    final selectedApplication = ref.watch(selectedApplicationProvider);

    final IdentityDocumentTypeModel? selectedIdDocType = ref.watch(selectedIdDocTypeProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            selectedIdDocType?.identityDocType ?? "-",
            style: const TextStyle(color: textGrayColor2),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _imageWidget(idCardFrontSide),
              SizedBox(width: 16.w),
              (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
                  ? _imageWidget(idCardBackSide)
                  : SizedBox(
                      height: 100.h,
                      width: 100.w,
                    ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _imageWidget(String? filePath) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.file(
          File(filePath ?? ""),
          height: 100.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
