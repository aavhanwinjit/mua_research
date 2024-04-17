import 'dart:convert';
import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/file_extension_enums.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/save_identity_details.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/insurance_stage_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SaveIDDetailsMixin {
  Future<void> saveIdentityDetails({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onSuccess,
  }) async {
    final bool loading = ref.watch(saveIdentityDetailsLoading);
    if (loading) return;

    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    final kycTypeNotifier = ref.watch(kycTypesNotifierProvider.notifier);
    final KycTypesModel selectedKycType = kycTypeNotifier
        .kycTypes()
        .where((element) => element.kycTypeId == selectedApplication?.kycTypeId)
        .toList()
        .first;

    final DocumentCategoryModel? selectedDocumentCategory = ref.watch(selectedDocumentCategoryProvider);

    final IdentityDocumentTypeModel? selectedIdDocType = ref.watch(selectedIdDocTypeProvider);

    final String? firstname = ref.watch(extractedFirstNameProvider);
    final String? surname = ref.watch(extractedSurNameProvider);
    final String? idnumber = ref.watch(extractedNICIDNumberProvider);

    final idCardFrontSide = ref.watch(idDocFrontFilePathProvider);
    final idCardBackSide = ref.watch(idDocBackFilePathProvider);

    // final idCardFrontScanResult = ref.watch(idDocFrontScanDocResultProvider);
    // final idCardBackScanResult = ref.watch(idDocBackScanDocResultProvider);

    // final nicCardFrontSide = ref.watch(nicCardFrontFilePathProvider);
    // final nicCardBackSide = ref.watch(nicCardBackFilePathProvider);

    // final passportFrontSide = ref.watch(passportFrontFilePathProvider);
    // final passportBackSide = ref.watch(passportBackFilePathProvider);

    File frontFile = File(idCardFrontSide ?? "");
    final List<int> frontFileBytes = await frontFile.readAsBytes() as List<int>;
    String frontBase64 = base64Encode(frontFileBytes);

    File backFile = File(idCardBackSide ?? "");
    final List<int> backFileBytes = await backFile.readAsBytes() as List<int>;
    String backBase64 = base64Encode(backFileBytes);

    SaveIdentityDetailsRequestModel request = SaveIdentityDetailsRequestModel(
      applicationRefNo: selectedApplication?.applicationRefNo,
      applicantType: selectedApplication?.nationality,
      policyType: selectedKycType.policyType,
      documentCategory: selectedDocumentCategory?.documentCategory,
      documentSide: null,
      documentType: selectedIdDocType?.documentCode,
      idDocTypeId: selectedIdDocType?.identityDocumentTypeId,
      surname: surname,
      otherName: firstname,
      idDocNumber: idnumber,
      idDocFrontImage: frontBase64,
      // idDocFrontImage: idCardFrontScanResult?.fileName,
      idDocBackImage: backBase64,
      // idDocBackImage: idCardBackScanResult?.fileName,
      customerId: null,
      fileExtension: FileExtensionEnums.png.toString().split('.').last,
    );

    ref.watch(saveIdentityDetailsLoading.notifier).update((state) => true);
    // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

    final response = await getIt<SaveIdentityDetails>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(saveIdentityDetailsLoading.notifier).update((state) => false);
        // ref.watch(customerInfoErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SaveIdentityDetailsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            ref.watch(selectedApplicationProvider.notifier).update((state) => success.body?.responseBody);

            onSuccess.call();
          }
        } else {
          ref.watch(saveIdentityDetailsLoading.notifier).update((state) => false);
          // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
