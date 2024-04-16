import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/get_motor_insurance_document_types.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_doc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetMotorInsuranceDocTypeMixin {
  Future<void> getMotorInsuranceDocumentTypes({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    ref
        .watch(motorInsuranceDocsTypesListLoading.notifier)
        .update((state) => true);

    final response = await getIt<GetMotorInsuranceDocumentTypes>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref
            .watch(motorInsuranceDocsTypesListLoading.notifier)
            .update((state) => false);

        context.showErrorSnackBar(
            message: Strings.globalErrorGenericMessageOne);
      },
      (GetMotorInsuranceDocumentTypesResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            final motorInsuranceDocTypesNotifier =
                ref.watch(motorInsuranceDocsTypesNotifierProvider.notifier);
            motorInsuranceDocTypesNotifier
                .updateDocTypesList(success.body?.responseBody ?? []);

            ref
                .watch(motorInsuranceDocsTypesListLoading.notifier)
                .update((state) => false);
          }
        } else {
          ref
              .watch(motorInsuranceDocsTypesListLoading.notifier)
              .update((state) => false);

          context.showErrorSnackBar(
            message:
                success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
