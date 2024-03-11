import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/request/get_agent_applications_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/dashboard/domain/usecases/get_agent_applications.dart';
import 'package:ekyc/features/dashboard/presentation/providers/agent_applications_notifier.dart';
import 'package:ekyc/features/dashboard/presentation/providers/application_filters_providers.dart';
import 'package:ekyc/features/dashboard/presentation/providers/dashboard_providers.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin AgentApplicationsMixin {
  Future<void> getAgentApplications({required BuildContext context, required WidgetRef ref}) async {
    final agentDetailsProvider = ref.watch(agentDetailsResponseProvider);
    final GetAgentDetailsResponseBody? agentDetails = agentDetailsProvider?.body?.responseBody;

    final String status = getFilterStatus(ref);

    final GetAgentApplicationsRequestModel request = GetAgentApplicationsRequestModel(
      agentId: agentDetails?.agentId,
      rowsPerPage: 10,
      pageNo: 1,
      status: status,
    );

    ref.watch(applicationListLoadingProvider.notifier).update((state) => true);
    ref.watch(applicationListErrorProvider.notifier).update((state) => false);

    final response = await getIt<GetAgentApplications>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(applicationListLoadingProvider.notifier).update((state) => false);
        ref.watch(applicationListErrorProvider.notifier).update((state) => true);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GetAgentApplicationsResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody?.agentApplicationList != null) {
            final agentApplicationNotifier = ref.watch(agentApplicationsNotifierProvider.notifier);

            agentApplicationNotifier.updateApplicationList(success.body?.responseBody?.agentApplicationList ?? []);

            ref.watch(applicationListLoadingProvider.notifier).update((state) => false);
            ref.watch(applicationListErrorProvider.notifier).update((state) => false);
          }
        } else {
          ref.watch(applicationListLoadingProvider.notifier).update((state) => false);
          ref.watch(applicationListErrorProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  String getFilterStatus(WidgetRef ref) {
    final idMissing = ref.watch(filterIncompleteIdProvider);
    final porMissing = ref.watch(filterIncompletePORProvider);
    final poaMissing = ref.watch(filterIncompletePOAProvider);
    final completed = ref.watch(filterCompleteProvider);

    List<String> resultList = [];

    if (idMissing) {
      resultList.add(Strings.apiChipStatusIDMissing);
    }
    if (porMissing) {
      resultList.add(Strings.apiChipStatusPORMissing);
    }
    if (poaMissing) {
      resultList.add(Strings.apiChipStatusPOAMissing);
    }
    if (completed) {
      resultList.add(Strings.apiChipStatusCompleted);
    }

    return resultList.join(',');
  }
}
