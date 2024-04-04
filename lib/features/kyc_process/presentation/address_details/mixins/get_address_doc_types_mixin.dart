import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/get_address_document_types.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_docs_types_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetAddressDocTypeMixin {
  Future<void> getAddressDocumentTypes({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    ref.watch(addressDocsTypesListLoading.notifier).update((state) => true);

    final response = await getIt<GetAddressDocumentTypes>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(addressDocsTypesListLoading.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetAddressDocumentTypesResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            final addressDocTypesNotifier = ref.watch(addressDocsTypesNotifierProvider.notifier);
            addressDocTypesNotifier.updateDocTypesList(success.body?.responseBody ?? []);

            ref.watch(addressDocsTypesListLoading.notifier).update((state) => false);
          }
        } else {
          ref.watch(addressDocsTypesListLoading.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
