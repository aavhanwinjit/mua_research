import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/get_non_motor_insurance_document_types.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/non_motor_insurance_doc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/non_motor_insurance_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetNonMotorInsuranceDocTypeMixin {
  Future<void> getNonMotorInsuranceDocumentTypes({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    ref.watch(nonMotorInsuranceDocsTypesListLoading.notifier).update((state) => true);

    final response = await getIt<GetNonMotorInsuranceDocumentTypes>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(nonMotorInsuranceDocsTypesListLoading.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetNonMotorInsuranceDocumentTypesResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            final motorInsuranceDocTypesNotifier = ref.watch(nonMotorInsuranceDocsTypesNotifierProvider.notifier);
            motorInsuranceDocTypesNotifier.updateDocTypesList(success.body?.responseBody ?? []);

            ref.watch(nonMotorInsuranceDocsTypesListLoading.notifier).update((state) => false);
          }
        } else {
          ref.watch(nonMotorInsuranceDocsTypesListLoading.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
