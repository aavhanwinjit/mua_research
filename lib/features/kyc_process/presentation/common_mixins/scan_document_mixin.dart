import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/file_extension_enums.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/request/scan_document_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/scan_document.dart';
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
    required StateProvider<bool> loadingProvider,
    required Function(ScanDocumentResponseBody?) onSuccess,
    required String base64Image,
  }) async {
    final loading = ref.watch(loadingProvider);
    if (loading) return;

    final AgentApplicationModel? selectedApplication =
        ref.watch(selectedApplicationProvider);

    final kycTypeNotifier = ref.watch(kycTypesNotifierProvider.notifier);
    final KycTypesModel selectedKycType = kycTypeNotifier
        .kycTypes()
        .where((element) => element.kycTypeId == selectedApplication?.kycTypeId)
        .toList()
        .first;

    final DocumentCategoryModel? selectedDocumentCategory =
        ref.watch(selectedDocumentCategoryProvider);

    ScanDocumentRequestModel request = ScanDocumentRequestModel(
      applicantType: selectedApplication?.nationality,
      policyType: selectedKycType.policyType,
      documentCategory: selectedDocumentCategory?.documentCategory,
      documentType: documentType,
      documentSide: "FRONT",
      customerId: null,
      policyNumber: selectedApplication?.policyNumber,
      fileExtension: FileExtensionEnums.png.toString().split('.').last,
      nicNumber: (selectedApplication?.nationality ==
              NationalityType.Mauritian.toString().split('.').last)
          ? selectedApplication?.idDocNumber
          : null,
      passportNumber: (selectedApplication?.nationality ==
              NationalityType.NonMauritian.toString().split('.').last)
          ? selectedApplication?.idDocNumber
          : null,
      quoteNumber: "252248",
      // selectedApplication?.quoteNumber,
      verificationData: VerificationData(
        firstName: "CALOWTEE",
        // firstName: selectedApplication?.idDocOtherName,
        surname: "MUSSAI",
        // surname: selectedApplication?.idDocSurname,
        idNumber: selectedApplication?.idDocNumber,
        billDate: null,
        registrationMark: null,
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

        context.showErrorSnackBar(
            message: Strings.globalErrorGenericMessageOne);
      },
      (ScanDocumentResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            onSuccess(success.body?.responseBody);
          }
        } else {
          ref.watch(loadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message:
                success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
