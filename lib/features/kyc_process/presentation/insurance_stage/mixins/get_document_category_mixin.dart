import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/request/get_document_category_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/get_document_category.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/document_category_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/insurance_stage_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetDocumentCategoryMixin {
  Future<void> getDocumentCategory({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    GetDocumentCategoryRequestModel request = GetDocumentCategoryRequestModel(id: selectedApplication?.kycTypeId);

    ref.watch(documentCategoryListLoading.notifier).update((state) => true);

    final response = await getIt<GetDocumentCategory>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(documentCategoryListLoading.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetDocumentCategoryResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            final documentCategoryNotifier = ref.watch(documentCategoryNotifierProvider.notifier);
            documentCategoryNotifier.updateList(success.body?.responseBody ?? []);

            ref.watch(documentCategoryListLoading.notifier).update((state) => false);
          }
        } else {
          ref.watch(documentCategoryListLoading.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
