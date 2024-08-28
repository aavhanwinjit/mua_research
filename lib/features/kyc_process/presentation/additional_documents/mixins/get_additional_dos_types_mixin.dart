import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_additional_document_types/response/get_additional_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/get_additional_document_types.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/additional_doc_type_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/additional_docs_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetAdditionalDocTypesMixin {
  Future<void> getAdditionalDocumentTypes({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    ref.watch(additionalDocsTypesListLoading.notifier).update((state) => true);

    final response = await getIt<GetAdditionalDocumentTypes>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(additionalDocsTypesListLoading.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetAdditionalDocumentTypesResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            final additionalDocTypesNotifier = ref.watch(additionalDocTypeNotifierProvider.notifier);
            additionalDocTypesNotifier.updateDocTypesList(success.body?.responseBody ?? []);

            ref.watch(additionalDocsTypesListLoading.notifier).update((state) => false);
          }
        } else {
          ref.watch(additionalDocsTypesListLoading.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
