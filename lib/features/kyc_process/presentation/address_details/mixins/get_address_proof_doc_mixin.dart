import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/insured_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/features/signature/data/models/view_file/request/view_file_request_model.dart';
import 'package:ekyc/features/signature/data/models/view_file/response/view_file_response_model.dart';
import 'package:ekyc/features/signature/domain/usecases/view_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin GetAddressProofDocMixin {
  Future<void> getAddressProofImage({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    ref.watch(addressProofBase64Provider.notifier).update((state) => null);

    final selectedApplication = ref.watch(selectedApplicationProvider);

    final ViewFileRequestModel request =
        ViewFileRequestModel(fileName: selectedApplication?.addressDocImagePath ?? "", isImage: true);

    final response = await getIt<ViewFile>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (ViewFileResponseModel success) {
        if (success.status?.isSuccess == true) {
          ref.watch(addressProofBase64Provider.notifier).update((state) => success.body?.responseBody);
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
