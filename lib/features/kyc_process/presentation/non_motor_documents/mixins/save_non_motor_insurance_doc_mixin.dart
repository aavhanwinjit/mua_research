import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/save_non_motor_insurance_documents/request/save_non_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_non_motor_insurance_documents/response/save_non_motor_insurance_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/save_non_motor_insurance_documents.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/non_motor_insurance_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/selected_non_motor_insurance_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SaveNonMotorInsuranceDocMixin {
  Future<void> saveNonMotorInsuranceDoc({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onSuccess,
  }) async {
    final bool loading = ref.watch(saveNonMotorInsuranceProofFileLoading);
    if (loading) return;

    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    final selectedDocsListProvider = ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);

    SaveNonMotorInsuranceDocumentsRequestModel request = SaveNonMotorInsuranceDocumentsRequestModel(
      agentApplicationId: selectedApplication?.agentApplicationId,
      isNonMotorDocVerificationCompleted: true,
      nonMotorDocumentDetailsModel: selectedDocsListProvider
          .list()
          .map(
            (e) => NonMotorDocDetail(
              nonMotorDocumentTypeId: e.documentElement?.mDocumentTypeId,
              nonMotorDocImagePath: e.scanResponse?.fileName ?? "",
              uploadDocumentId: e.scanResponse?.uploadedDocumentId,
              // nonMotorDocPDFPath: e.scanResponse2?.fileName,
              // uploadPDFDocumentId: e.scanResponse2?.uploadedDocumentId,
            ),
          )
          .toList(),
    );

    ref.watch(saveNonMotorInsuranceProofFileLoading.notifier).update((state) => true);

    final response = await getIt<SaveNonMotorInsuranceDocuments>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(saveNonMotorInsuranceProofFileLoading.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SaveNonMotorInsuranceDocumentsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            ref.watch(selectedApplicationProvider.notifier).update((state) => success.body?.responseBody);

            onSuccess.call();
          }
        } else {
          ref.watch(saveNonMotorInsuranceProofFileLoading.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
