import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/get_por_document_types.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/por_docs_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/upload_por_docs_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetPORDocumentTypesMixin {
  Future<void> getPORDocumentType({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    ref.watch(porDocsTypesListLoading.notifier).update((state) => true);

    final response = await getIt<GetPORDocumentTypes>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(porDocsTypesListLoading.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetPorDocumentTypesResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            List<PORDocumentTypeModel>? documentList = [...success.body!.responseBody!];

            final porDocTypesNotifier = ref.watch(pORDocsTypesNotifierProvider.notifier);

            final selectedApplication = ref.watch(selectedApplicationProvider);

            if (selectedApplication?.maritalStatus == MaritalStatus.SINGLE.toString().split('.').last) {
              documentList
                  .removeWhere((element) => element.documentCode == DocumentCodes.MRC.toString().split('.').last);
              documentList
                  .removeWhere((element) => element.documentCode == DocumentCodes.DRC.toString().split('.').last);
            }

            porDocTypesNotifier.updateDocTypesList(documentList);

            ref.watch(porDocsTypesListLoading.notifier).update((state) => false);
          }
        } else {
          ref.watch(porDocsTypesListLoading.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
