import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/request/save_address_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/save_address_details.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin SaveAddressDetailsMixin {
  Future<void> saveAddressDetails({
    required BuildContext context,
    required WidgetRef ref,
    required VoidCallback onSuccess,
  }) async {
    final bool loading = ref.watch(saveAddressDetailsLoading);
    if (loading) return;

    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

    final ScanDocumentResponseBody? ocrResponse = ref.watch(addressDocOCRApiResponse);

    final String? addressOtherName = ref.watch(addressOtherNameProvider);
    final String? addressSurname = ref.watch(addressSurnameProvider);

    SaveAddressDetailsRequestModel request = SaveAddressDetailsRequestModel(
      applicationRefNo: selectedApplication?.applicationRefNo,
      documentTypeId: selectedAddressDocType?.addressDocumentTypeId,
      docImagePath: ocrResponse?.fileName,
      docSurname: addressSurname,
      docOtherName: addressOtherName,
      docBillDate: ocrResponse?.ocrResponse?.documentdata?.billDate,
      docAddress: "",
      uploadedDocumentId: ocrResponse?.uploadedDocumentId,
      isAddressVerificationCompleted: false,
      porRequired: false,
    );

    ref.watch(saveAddressDetailsLoading.notifier).update((state) => true);
    // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

    final response = await getIt<SaveAddressDetails>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(saveAddressDetailsLoading.notifier).update((state) => false);
        // ref.watch(customerInfoErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SaveIdentityDetailsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            ref.watch(selectedApplicationProvider.notifier).update((state) => success.body?.responseBody);

            onSuccess.call();
          }
        } else {
          ref.watch(saveAddressDetailsLoading.notifier).update((state) => false);
          // ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
