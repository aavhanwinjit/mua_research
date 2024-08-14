import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/request/save_por_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/response/save_por_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/save_por_documents.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/insured_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SavePORDocsMixin {
  Future<void> savePORDocuments({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onSuccess,
  }) async {
    final bool loading = ref.watch(saveInsuredDetailsLoading);
    if (loading) return;

    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    SavePorDocumentsRequestModel request = SavePorDocumentsRequestModel(
      agentApplicationId: selectedApplication?.agentApplicationId,
      isPorDocVerificationCompleted: true,
      porDocumentDetailsModel: selectedDocsListProvider
          .list()
          .map(
            (e) => PorDocumentDetailsModel(
              porDocumentTypeId: e.documentElement?.porDocumentTypeId,
              issueDate: e.issueDate,
              // issueDate: e.scanResponse?.ocrResponse?.documentdata?.billDate,
              lastName: e.extractedLastName,
              porDocImagePath: e.scanResponse?.fileName,
              uploadDocumentId: e.scanResponse?.uploadedDocumentId,
            ),
          )
          .toList(),
    );

    ref.watch(saveInsuredDetailsLoading.notifier).update((state) => true);
    // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

    final response = await getIt<SavePORDocuments>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(saveInsuredDetailsLoading.notifier).update((state) => false);
        // ref.watch(customerInfoErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SavePorDocumentsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            // ref.watch(selectedApplicationProvider.notifier).update((state) => success.body?.responseBody);

            onSuccess.call();
          }
        } else {
          ref.watch(saveInsuredDetailsLoading.notifier).update((state) => false);
          // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
