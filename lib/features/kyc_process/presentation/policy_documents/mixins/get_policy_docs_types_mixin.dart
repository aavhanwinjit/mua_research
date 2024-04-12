import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_policy_document_types/response/get_policy_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/get_policy_document_types.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/policy_doc_type_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/policy_documents_screen_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetPolicyDocsTypesMixin {
  Future<void> getPolicyDocumentTypes({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    ref.watch(policyDocsTypesListLoading.notifier).update((state) => true);

    final response = await getIt<GetPolicyDocumentTypes>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(policyDocsTypesListLoading.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetPolicyDocumentTypesResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            final policyDocTypesNotifier = ref.watch(policyDocTypeNotifierProvider.notifier);

            policyDocTypesNotifier.updateDocTypesList(success.body?.responseBody ?? []);

            ref.watch(policyDocsTypesListLoading.notifier).update((state) => false);
          }
        } else {
          ref.watch(policyDocsTypesListLoading.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
