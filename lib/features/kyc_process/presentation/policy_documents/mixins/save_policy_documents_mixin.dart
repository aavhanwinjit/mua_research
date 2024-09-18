import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/request/save_policy_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/response/save_policy_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/save_policy_documents.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/pd_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/selected_policy_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SavePolicyDocumentsMixin {
  Future<void> savePolicyDocuments({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onSuccess,
  }) async {
    final bool loading = ref.watch(savePolicyDocumentLoadingProvider);
    if (loading) return;

    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    final selectedDocsListProvider = ref.watch(selectedPolicyDocTypeListNotifierProvider.notifier);

    SavePolicyDocumentsRequestModel request = SavePolicyDocumentsRequestModel(
      agentApplicationId: selectedApplication?.agentApplicationId,
      isPolicyDocVerificationCompleted: true,
      policyDoumentDetailsModel: selectedDocsListProvider
          .list()
          .map(
            (e) => PolicyDoumentDetailsModel(
              policyDocumentTypeId: e.documentElement?.policyDocumentTypeId,
              policyDocImagePath: e.scanResponse?.fileName,
              uploadDocumentId: e.scanResponse?.uploadedDocumentId,
              // policyDocPDFPath: e.scanResponse2?.fileName,
              // uploadPDFDocumentId: e.scanResponse2?.uploadedDocumentId,
            ),
          )
          .toList(),
    );

    ref.watch(savePolicyDocumentLoadingProvider.notifier).update((state) => true);
    // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

    final response = await getIt<SavePolicyDocuments>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(savePolicyDocumentLoadingProvider.notifier).update((state) => false);
        // ref.watch(customerInfoErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SavePolicyDocumentsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            ref.watch(selectedApplicationProvider.notifier).update((state) => success.body?.responseBody);

            onSuccess.call();
          }
        } else {
          ref.watch(savePolicyDocumentLoadingProvider.notifier).update((state) => false);
          // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
