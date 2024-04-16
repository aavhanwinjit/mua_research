import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/request/save_additional_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/response/save_additional_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/save_additional_documents.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/additional_docs_review_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/selected_additional_doc_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SaveAdditionalDetailsMixin {
  Future<void> saveAdditionalDetails({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onSuccess,
  }) async {
    final bool loading = ref.watch(saveAdditionalDetailsLoading);
    if (loading) return;

    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    final selectedDocsListProvider = ref.watch(selectedAdditionalDocListNotifierProvider.notifier);

    SaveAdditionalDocumentsRequestModel request = SaveAdditionalDocumentsRequestModel(
      agentApplicationId: selectedApplication?.agentApplicationId,
      isAdditionalDocVerificationCompleted: true,
      additionalDocumentDetailsModel: selectedDocsListProvider
          .list()
          .map(
            (e) => AdditionalDocumentDetailsModel(
              additionalDocImagePath: e.scanResponse?.fileName,
              uploadDocumentId: e.scanResponse?.uploadedDocumentId,
            ),
          )
          .toList(),
    );

    ref.watch(saveAdditionalDetailsLoading.notifier).update((state) => true);
    // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

    final response = await getIt<SaveAdditionalDocuments>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(saveAdditionalDetailsLoading.notifier).update((state) => false);
        // ref.watch(customerInfoErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SaveAdditionalDocumentsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            ref.watch(selectedApplicationProvider.notifier).update((state) => success.body?.responseBody);

            onSuccess.call();
          }
        } else {
          ref.watch(saveAdditionalDetailsLoading.notifier).update((state) => false);
          // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
