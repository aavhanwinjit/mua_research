import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/constants/enums/file_extension_enums.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/request/scan_document_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/scan_document.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/upload_por_docs_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/insurance_stage_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin ScanDocumentMixin {
  Future<void> scanDocument({
    required BuildContext context,
    required WidgetRef ref,
    required String? documentType,
    String? registrationNumber,
    required StateProvider<bool> loadingProvider,
    required Function(ScanDocumentResponseBody?) onSuccess,
    required String base64Image,
    String? documentSide,
    String? fileExtension,
  }) async {
    final loading = ref.watch(loadingProvider);
    if (loading) return;

    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    final kycTypeNotifier = ref.watch(kycTypesNotifierProvider.notifier);
    final KycTypesModel selectedKycType = kycTypeNotifier
        .kycTypes()
        .where((element) => element.kycTypeId == selectedApplication?.kycTypeId)
        .toList()
        .first;

    final DocumentCategoryModel? selectedDocumentCategory = ref.watch(selectedDocumentCategoryProvider);

    String? firstName;
    String? lastName;
    String? idNumber;
    String? nicNumber;

    if (documentType == DocumentCodes.NIC.toString().split('.').last && documentSide == "BACK") {
      firstName = ref.watch(extractedFirstNameProvider);
      lastName = ref.watch(extractedSurNameProvider);
      idNumber = ref.watch(extractedNICIDNumberProvider);
      nicNumber = ref.watch(extractedNICIDNumberProvider);
    } else {
      firstName = // selectedApplication?.idDocOtherName,
          ref.watch(porDocUploadProcess)
              ? selectedApplication?.addressDocOtherName
              : selectedApplication?.idDocOtherName;
      lastName = // selectedApplication?.idDocSurname,
          ref.watch(porDocUploadProcess) ? selectedApplication?.addressDocSurname : selectedApplication?.idDocSurname;
      idNumber = selectedApplication?.idDocNumber;
      nicNumber = (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
          ? selectedApplication?.idDocNumber
          : null;
    }

    ScanDocumentRequestModel request = ScanDocumentRequestModel(
      applicantType: selectedApplication?.nationality,
      policyType: selectedKycType.policyType,
      documentCategory: selectedDocumentCategory?.documentCategory,
      documentType: documentType,
      documentSide: documentSide ?? "FRONT",
      customerId: "",
      policyNumber: selectedApplication?.policyNumber,
      fileExtension: fileExtension ?? FileExtensionEnums.png.toString().split('.').last,
      nicNumber: nicNumber,
      passportNumber: (selectedApplication?.nationality == NationalityType.NonMauritian.toString().split('.').last)
          ? selectedApplication?.idDocNumber
          : null,
      quoteNumber: selectedApplication?.quoteNumber,
      //  "252248",
      verificationData: VerificationData(
        // firstName: "CALOWTEE",
        firstName: firstName,
        // surname: "MUSSAI",
        surname: lastName,
        idNumber: idNumber,
        billDate: null,
        registrationMark: documentType == DocumentCodes.HRP.toString().split('.').last ? registrationNumber : null,
        issueDate: null,
      ),
      base64Doc: base64Image,
    );

    debugPrint(request.toJson().toString());

    ref.watch(loadingProvider.notifier).update((state) => true);

    final response = await getIt<ScanDocument>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(loadingProvider.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (ScanDocumentResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            if (success.body?.responseBody?.ocrResponse == null) {
              // Allow ocr response is null
              onSuccess(success.body?.responseBody);
            } else if (success.body?.responseBody?.ocrResponse != null &&
                success.body?.responseBody?.ocrResponse?.code == 0) {
              onSuccess(success.body?.responseBody);
            } else {
              if (success.body?.responseBody?.ocrResponse?.documentdata?.kycStatus == "Success") {
                // Allow only if KYC status is success
                onSuccess(success.body?.responseBody);
              } else {
                if (success.body?.responseBody?.ocrResponse?.documentdata?.kycStatusMsg ==
                        "KYC validation failed. First name did not match in the document. Last name did not match in the document." ||
                    success.body?.responseBody?.ocrResponse?.documentdata?.kycStatusMsg ==
                        "KYC validation failed. Last name did not match in the document." ||
                    success.body?.responseBody?.ocrResponse?.documentdata?.kycStatusMsg ==
                        "KYC validation failed. First name did not match in the document.") {
                  // Also allow if KYC status is failed due to first name and last name did not match as its Address document
                  // and it will later on ask for POR document
                  onSuccess(success.body?.responseBody);
                } else if (success.body?.responseBody?.ocrResponse?.documentdata?.kycStatusMsg == "") {
                  onSuccess(success.body?.responseBody);
                } else {
                  ref.watch(loadingProvider.notifier).update((state) => false);

                  context.showErrorSnackBar(
                    message: success.body?.responseBody?.ocrResponse?.documentdata?.kycStatusMsg ??
                        Strings.globalErrorGenericMessageOne,
                  );
                }
              }
            }
          }
        } else {
          ref.watch(loadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
