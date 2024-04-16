import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/request/save_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/response/save_motor_insurance_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/save_motor_insurance_documents.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/selected_motor_insurance_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SaveMotorInsuranceDocMixin {
  Future<void> saveMotorInsuranceDoc({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onSuccess,
  }) async {
    final bool loading = ref.watch(saveMotorInsuranceProofFileLoading);
    if (loading) return;

    final AgentApplicationModel? selectedApplication =
        ref.watch(selectedApplicationProvider);

    final selectedDocsListProvider =
        ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);

    SaveMotorInsuranceDocumentsRequestModel request =
        SaveMotorInsuranceDocumentsRequestModel(
      agentApplicationId: selectedApplication?.agentApplicationId,
      isMotorDocVerificationCompleted: true,
      motorDocumentDetailsModel: selectedDocsListProvider
          .list()
          .map(
            (e) => MotorDocDetail(
              uploadDocumentId: e.documentElement?.mDocumentTypeId,
              motorDocumentTypeId: e.documentElement?.mDocumentTypeId,
              motorDocImagePath: e.motorDocImagePath,
            ),
          )
          .toList(),
    );

    ref
        .watch(saveMotorInsuranceProofFileLoading.notifier)
        .update((state) => true);

    final response = await getIt<SaveMotorInsuranceDocuments>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref
            .watch(saveMotorInsuranceProofFileLoading.notifier)
            .update((state) => false);

        context.showErrorSnackBar(
            message: Strings.globalErrorGenericMessageOne);
      },
      (SaveMotorInsuranceDocumentsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            ref
                .watch(selectedApplicationProvider.notifier)
                .update((state) => success.body?.responseBody);

            onSuccess.call();
          }
        } else {
          ref
              .watch(saveMotorInsuranceProofFileLoading.notifier)
              .update((state) => false);

          context.showErrorSnackBar(
            message:
                success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
