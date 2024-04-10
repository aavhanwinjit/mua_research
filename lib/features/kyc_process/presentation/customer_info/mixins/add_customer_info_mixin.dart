import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/kyc_type_enums.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_type_provider.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/request/add_customer_information_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/response/add_customer_information_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/add_customer_information.dart';
import 'package:ekyc/features/kyc_process/presentation/customer_info/providers/customer_info_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin AddCustomerInfoMixin {
  Future<void> addCustomerInformation(
      {required BuildContext context, required WidgetRef ref, required VoidCallback onSuccess}) async {
    KeyboardHelper.hideKeyboard(context);

    final bool loading = ref.watch(customerInfoLoadingProvider);
    if (loading) return;

    final formKey = ref.watch(customerInfoFormKey);

    if (!formKey.currentState!.validate()) {
      return;
    }

    final selectedKycType = ref.watch(selectedKycTypeProvider);

    final mobileNumber = ref.watch(customerInfoMobileNumberProvider);
    final emailId = ref.watch(customerInfoEmailProvider);
    final maritalStatus = ref.watch(customerInfoMaritalStatusProvider);
    final nationalityType = ref.watch(customerInfoNationalityTypeProvider);
    final quoteNumber = ref.watch(customerInfoQuoteNumberProvider);
    final policyNumber = ref.watch(customerInfoPolicyNumberProvider);

    AddCustomerInformationRequestModel request = AddCustomerInformationRequestModel(
      mobileNumber: mobileNumber,
      emailId: emailId,
      maritalStatus: maritalStatus.toString().split('.').last,
      nationality: nationalityType.toString().split('.').last,
      quoteNumber: (selectedKycType?.kycTypeId == KYCType.MOTOR_INSURANCE ||
              selectedKycType?.kycTypeId == KYCType.NON_MOTOR_INSURANCE)
          ? quoteNumber
          : null,
      policyNumber: (selectedKycType?.kycTypeId == KYCType.LIFE_INSURANCE) ? policyNumber : null,
      kycTypeId: selectedKycType?.kycTypeId,
    );

    ref.watch(customerInfoLoadingProvider.notifier).update((state) => true);
    ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

    final response = await getIt<AddCustomerInformation>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(customerInfoLoadingProvider.notifier).update((state) => false);
        ref.watch(customerInfoErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (AddCustomerInformationResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            ref.watch(selectedApplicationProvider.notifier).update((state) => success.body?.responseBody);

            onSuccess.call();
          }
        } else {
          ref.watch(customerInfoLoadingProvider.notifier).update((state) => false);
          ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
