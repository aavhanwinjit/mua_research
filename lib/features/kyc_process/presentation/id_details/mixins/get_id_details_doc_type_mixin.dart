import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/get_identity_document_types.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_docs_types_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetIDDetailsDocTypeMixin {
  Future<void> getIdentityDocumentTypes({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onSuccess,
  }) async {
    ref.watch(idDocsTypesListLoading.notifier).update((state) => true);

    final response = await getIt<GetIdentityDocumentTypes>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(idDocsTypesListLoading.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetIdentityDocumentTypesResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            final idDocTypesNotifier = ref.watch(idDocsTypesNotifierProvider.notifier);
            idDocTypesNotifier.updateDocTypesList(success.body?.responseBody ?? []);

            ref.watch(idDocsTypesListLoading.notifier).update((state) => false);
          }
        } else {
          ref.watch(idDocsTypesListLoading.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
