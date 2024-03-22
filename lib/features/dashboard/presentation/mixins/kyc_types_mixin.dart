import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/request/get_kyc_types_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/dashboard/domain/usecases/get_kyc_types.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_type_bottomsheet_providers.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_types_notifier.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin KycTypesMixin {
  Future<void> getKycTypes({required BuildContext context, required WidgetRef ref}) async {
    final agentDetailsProvider = ref.watch(agentDetailsResponseProvider);
    final GetAgentDetailsResponseBody? agentDetails = agentDetailsProvider?.body?.responseBody;

    final GetKycTypesRequestModel request = GetKycTypesRequestModel(
      id: agentDetails?.companyIds,
    );

    ref.watch(kycTypeListLoadingProvider.notifier).update((state) => true);
    ref.watch(kycTypeListErrorProvider.notifier).update((state) => false);

    final response = await getIt<GetKycTypes>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(kycTypeListLoadingProvider.notifier).update((state) => false);
        ref.watch(kycTypeListErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetKycTypesResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            final kycTypeNotifier = ref.watch(kycTypesNotifierProvider.notifier);

            kycTypeNotifier.updateApplicationList(success.body?.responseBody ?? []);

            ref.watch(kycTypeListLoadingProvider.notifier).update((state) => false);
            ref.watch(kycTypeListErrorProvider.notifier).update((state) => false);
          }
        } else {
          ref.watch(kycTypeListLoadingProvider.notifier).update((state) => false);
          ref.watch(kycTypeListErrorProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
